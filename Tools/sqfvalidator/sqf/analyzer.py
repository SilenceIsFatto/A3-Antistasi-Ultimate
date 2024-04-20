from copy import deepcopy

from sqf.types import Statement, Code, Nothing, Variable, Array, String, Type, File, BaseType, \
    Number, Preprocessor, Script, Anything
from sqf.interpreter_types import InterpreterType, PrivateType, ForType, SwitchType, \
    DefineStatement, DefineResult, IfDefResult
from sqf.keywords import Keyword, PREPROCESSORS
from sqf.expressions import UnaryExpression, BinaryExpression
from sqf.exceptions import SQFParserError, SQFWarning
from sqf.base_interpreter import BaseInterpreter
from sqf.database import EXPRESSIONS
from sqf.common_expressions import COMMON_EXPRESSIONS, ForEachExpression, ElseExpression
from sqf.expressions_cache import values_to_expressions, build_database
from sqf.parser_types import Comment
from sqf.parser import parse


def all_equal(iterable):
    return iterable.count(iterable[0]) == len(iterable)


# Replace all expressions in `database` by expressions from `COMMON_EXPRESSIONS` with the same signature
for exp in COMMON_EXPRESSIONS:
    if exp in EXPRESSIONS:
        EXPRESSIONS.remove(exp)
    EXPRESSIONS.append(exp)


EXPRESSIONS_MAP = build_database(EXPRESSIONS)


def is_undefined_define(base_tokens):
    if len(base_tokens) == 2:
        if isinstance(base_tokens[0], Statement):
            first = base_tokens[0].base_tokens[0]
        else:
            first = base_tokens[0]
        return str(first)[0].isupper() and str(base_tokens[1])[0] == '('

    return False


class UnexecutedCode:
    """
    A piece of code that needs to be re-run on a contained env to check for issues.
    We copy the state of the analyzer (namespaces) so we get what that code would run.
    """
    def __init__(self, code, analyzer):
        self.namespaces = deepcopy(analyzer._namespaces)
        self.namespace_name = analyzer.current_namespace.name
        self.code = code
        self.position = code.position
        self.delete_scope_level = analyzer.delete_scope_level


class Analyzer(BaseInterpreter):
    """
    The Analyzer. This is an interpreter that:
    * runs SQF statements that accepts unknown types
    * Stores exceptions instead of rising them.
    * Runs code that is declared but not called.
    """
    COMMENTS_FOR_PRIVATE = {'IGNORE_PRIVATE_WARNING', 'USES_VARIABLES'}

    def __init__(self, all_vars=None):
        super().__init__(all_vars)
        self.exceptions = []

        self.privates = set()
        self.unevaluated_interpreter_tokens = []
        self._unexecuted_codes = {}
        self._executed_codes = {}  # executed code -> result

        self.variable_uses = {}

        # a counter used by `self.assign` to identify if a variable is deleted (assigned to Anything) or not.
        self.delete_scope_level = 0

        # list of variables that we currently know the type during the script.
        self.undefined_variables = set()

    def exception(self, exception):
        self.exceptions.append(exception)

    @staticmethod
    def code_key(code):
        return code.position, str(code)

    @staticmethod
    def exe_code_key(code, extra_scope):
        if extra_scope is None:
            extra_scope = {}
        return str(code), tuple((x, type(extra_scope[x])) for x in sorted(extra_scope.keys()))

    def value(self, token, namespace_name=None):
        """
        Given a single token, recursively evaluates and returns its value
        """
        if namespace_name is None:
            namespace_name = self.current_namespace.name

        assert(isinstance(token, BaseType))
        if isinstance(token, IfDefResult):
            for x in token.result:
                x.set_position(token.position)
                result = self.value(self.execute_token(x))
        elif isinstance(token, DefineResult):
            token.result.set_position(token.position)
            result = self.value(self.execute_token(token.result))
        elif isinstance(token, Statement):
            result = self.value(self.execute_token(token))
        elif isinstance(token, Variable):
            scope = self.get_scope(token.name, namespace_name)
            # if scope.level == 0 and not token.is_global:
            #     self.exception(
            #         SQFWarning(token.position, 'Local variable "%s" is not from this scope (not private)' % token))

            try:
                result = scope[token.name]
            except KeyError:
                result = self.private_default_class()
            result.position = token.position

            key = '%s_%s_%s' % (namespace_name, scope.level, scope.normalize(token.name))
            if key in self.variable_uses:
                self.variable_uses[key]['count'] += 1

        elif isinstance(token, Array) and not token.is_undefined:
            result = Array([self.value(self.execute_token(s)) for s in token.value])
            result.position = token.position
        else:
            null_expressions = values_to_expressions([token], EXPRESSIONS_MAP, EXPRESSIONS)
            if null_expressions:
                result = null_expressions[0].execute([token], self)
            else:
                result = token
            result.position = token.position

        if isinstance(result, Code) and self.code_key(result) not in self._unexecuted_codes:
            self._unexecuted_codes[self.code_key(result)] = UnexecutedCode(result, self)

        return result

    def execute_token(self, token):
        """
        Given a single token, recursively evaluate it without returning its value (only type)
        """
        # interpret the statement recursively
        if isinstance(token, Statement):
            result = self.execute_single(statement=token)
            # we do not want the position of the statement, but of the token, so we do not
            # store it here
        elif isinstance(token, Array) and token.value is not None:
            result = Array([self.execute_token(s) for s in token.value])
            result.position = token.position
        else:
            result = token
            result.position = token.position

        return result

    def execute_unexecuted_code(self, code_key, extra_scope=None, own_namespace=False):
        """
        Executes a code in a dedicated env and put consequence exceptions in self.

        own_namespace: whether the execution uses the current local variables or no variables
        """
        container = self._unexecuted_codes[code_key]

        analyzer = Analyzer()
        if not own_namespace:
            analyzer._namespaces = container.namespaces
        analyzer.variable_uses = self.variable_uses
        analyzer.delete_scope_level = container.delete_scope_level

        file = File(container.code._tokens)
        file.position = container.position

        this = Anything()
        this.position = container.position

        analyzer.execute_code(file, extra_scope=extra_scope,
                              namespace_name=container.namespace_name, delete_mode=True)

        self.exceptions.extend(analyzer.exceptions)

    def execute_code(self, code, extra_scope=None, namespace_name='missionnamespace', delete_mode=False):
        key = self.code_key(code)
        exe_code_key = self.exe_code_key(code, extra_scope)

        if key in self._unexecuted_codes:
            del self._unexecuted_codes[key]
        if exe_code_key in self._executed_codes:
            outcome = self._executed_codes[exe_code_key]
        else:
            self.delete_scope_level += delete_mode
            outcome = super().execute_code(code, extra_scope, namespace_name)
            self.delete_scope_level -= delete_mode
            self._executed_codes[exe_code_key] = outcome

        if isinstance(code, File):
            for key in self._unexecuted_codes:
                self.execute_unexecuted_code(key)

            # collect `private` statements that have a variable but were not collected by the assignment operator
            # this check is made at the scope level
            for private in self.privates:
                self.exception(SQFWarning(private.position, 'private argument must be a string.'))

            # this check is made at the scope level
            for token in self.unevaluated_interpreter_tokens:
                self.exception(SQFWarning(token.position, 'helper type "%s" not evaluated' % token.__class__.__name__))

            # this check is made at script level
            if not delete_mode:
                # collect variables that were not used
                for key in self.variable_uses:
                    if self.variable_uses[key]['count'] == 0:
                        variable = self.variable_uses[key]['variable']
                        self.exception(
                            SQFWarning(variable.position, 'Variable "%s" not used' % variable.value))

        return outcome

    def _parse_params_args(self, arguments, base_token):
        if isinstance(arguments, Anything) or (isinstance(arguments, Array) and arguments.is_undefined):
            return [Anything() for _ in range(len(base_token))]
        return super()._parse_params_args(arguments, base_token)

    def _add_private(self, variable):
        super()._add_private(variable)
        scope = self.current_scope
        key = '%s_%s_%s' % (self.current_namespace.name, scope.level, scope.normalize(variable.value))
        self.variable_uses[key] = {'count': 0, 'variable': variable}

    def assign(self, lhs, rhs_v):
        """
        Assigns the rhs_v to the lhs variable.
        """
        lhs_name = lhs.name
        lhs_position = lhs.position

        scope = self.get_scope(lhs_name)

        try:
            lhs_t = type(scope[lhs.name])
        except KeyError:
            lhs_t = self.private_default_class
        rhs_t = type(rhs_v)

        if scope.level == 0:
            # global variable becomes undefined when:
            # 1. it changes type AND
            # 2. it is modified on a higher delete scope (e.g. if {}) or it already has a defined type
            if (lhs_t != Anything or self.delete_scope_level > scope.level) and \
                    lhs_t != rhs_t and lhs_name not in self.undefined_variables:
                self.undefined_variables.add(lhs_name)

        if scope.level == 0:
            if lhs_name in self.undefined_variables:
                rhs_t = Anything
        elif lhs_t != rhs_t and self.delete_scope_level >= scope.level:
            rhs_t = Anything

        scope[lhs_name] = rhs_t()

        # if scope.level == 0 and lhs_name.startswith('_'):
        #     self.exception(
        #         SQFWarning(lhs_position, 'Local variable "%s" assigned to an outer scope (not private)' % lhs_name))

    def execute_single(self, statement):
        assert(isinstance(statement, Statement))

        outcome = Nothing()
        outcome.position = statement.position

        base_tokens = []
        for token in statement.tokens:
            if not statement.is_base_token(token):
                self.execute_other(token)
            else:
                base_tokens.append(token)

        if not base_tokens:
            return outcome

        # operations that cannot evaluate the value of all base_tokens
        if type(base_tokens[0]) == DefineStatement:
            return base_tokens[0]
        elif base_tokens[0] == Preprocessor("#include"):
            if len(base_tokens) != 2:
                exception = SQFParserError(base_tokens[0].position, "#include requires one argument")
                self.exception(exception)
            elif type(self.execute_token(base_tokens[1])) != String:
                exception = SQFParserError(base_tokens[0].position, "#include first argument must be a string")
                self.exception(exception)
            return outcome
        elif isinstance(base_tokens[0], Keyword) and base_tokens[0].value in PREPROCESSORS:
            # remaining preprocessors are ignored
            return outcome
        elif len(base_tokens) == 2 and base_tokens[0] == Keyword('private'):
            # the rhs may be a variable, so we cannot get the value
            rhs = self.execute_token(base_tokens[1])
            if isinstance(rhs, String):
                self.add_privates([rhs])
            elif isinstance(rhs, Array):
                value = self.value(rhs)
                if value.is_undefined:
                    self.exception(SQFWarning(base_tokens[0].position,
                                              'Obfuscated statement. Consider explicitly set what is private.'))
                else:
                    self.add_privates(value)
            elif isinstance(rhs, Variable):
                var = String('"' + rhs.name + '"')
                var.position = rhs.position
                self.add_privates([var])
                outcome = PrivateType(rhs)
                outcome.position = rhs.position
                self.privates.add(outcome)
            else:
                self.exception(SQFParserError(base_tokens[0].position, '`private` used incorrectly'))
            return outcome
        # assignment operator
        elif len(base_tokens) == 3 and base_tokens[1] == Keyword('='):
            lhs = self.execute_token(base_tokens[0])
            if isinstance(lhs, PrivateType):
                self.privates.remove(lhs)
                lhs = lhs.variable
            else:
                lhs = self.get_variable(base_tokens[0])

            if not isinstance(lhs, Variable):
                self.exception(SQFParserError(base_tokens[0].position, 'lhs of assignment operator must be a variable'))
            else:
                # if the rhs_v is code and calls `lhs` (recursion) it will assume lhs is anything (and not Nothing)
                scope = self.get_scope(lhs.name)
                if lhs.name not in scope or isinstance(scope[lhs.name], Nothing):
                    scope[lhs.name] = Anything()

                rhs_v = self.value(base_tokens[2])
                self.assign(lhs, rhs_v)
                if not statement.ending:
                    outcome = rhs_v
            return outcome
        # A variable can only be evaluated if we need its value, so we will not call its value until the very end.
        elif len(base_tokens) == 1 and type(base_tokens[0]) in (Variable, Array):
            return self.execute_token(base_tokens[0])
        # heuristic for defines (that are thus syntactically correct):
        #   - is keyword but upper cased
        #   - first token string starts uppercased
        elif len(base_tokens) == 1 and type(base_tokens[0]) == Keyword and str(base_tokens[0])[0].isupper():
            outcome = Variable(str(base_tokens[0]))
            outcome.position = base_tokens[0].position
            return outcome
        elif is_undefined_define(base_tokens):
            # get all arguments and compute their value to analyze them
            if isinstance(base_tokens[1].base_tokens[0], Statement):
                sub_tokens = base_tokens[1].base_tokens[0].base_tokens
            else:
                sub_tokens = base_tokens[0]
            for sub_token in sub_tokens:
                self.value(sub_token)

            # finally, build the outcome
            outcome = Anything()
            outcome.position = base_tokens[0].position
            return outcome

        # evaluate all the base_tokens, trying to obtain their values
        values = []
        tokens = []
        for token in base_tokens:
            t = self.execute_token(token)
            v = self.value(t)
            tokens.append(t)
            values.append(v)

        # try to find a match for any expression, both typed and un-typed
        case_found = None
        possible_expressions = values_to_expressions(values, EXPRESSIONS_MAP, EXPRESSIONS)
        for case in possible_expressions:
            if case.is_signature_match(values):  # match first occurrence
                case_found = case
                break

        if case_found:
            # if exact match, we run the expression.
            if case_found.is_match(values):
                # parse and execute the string that is code (to count usage of variables)
                if case_found.keyword == Keyword('isnil') and type(values[1]) == String or \
                   case_found.keyword == Keyword('configClasses'):
                    code_position = {'isnil': 1, 'configclasses': 0}[case_found.keyword.unique_token]
                    extra_scope = {'isnil': None, 'configclasses': {'_x': Anything()}}[case_found.keyword.unique_token]

                    # when the string is undefined, there is no need to evaluate it.
                    if not values[code_position].is_undefined:
                        try:
                            code = Code([parse(values[code_position].value)])
                            code.position = values[code_position].position
                            self.execute_code(code, extra_scope=extra_scope)
                        except SQFParserError as e:
                            self.exceptions.append(
                                SQFParserError(values[code_position].position,
                                               'Error while parsing a string to code: %s' % e.message))
                # finally, execute the statement
                outcome = case_found.execute(values, self)
            elif len(possible_expressions) == 1 or all_equal([x.return_type for x in possible_expressions]):
                return_type = possible_expressions[0].return_type
                if isinstance(case_found, (ForEachExpression, ElseExpression)):
                    outcome = Anything()
                elif return_type is not None:
                    outcome = return_type()
                if return_type == ForType:
                    outcome.copy(values[0])
                elif case_found.keyword == Keyword('call'):
                    outcome = Anything()
            else:
                # when a case is found but we cannot decide on the type, it is anything
                outcome = Anything()

            extra_scope = None
            if case_found.keyword in (Keyword('select'), Keyword('apply'), Keyword('count'), Keyword('findif')):
                extra_scope = {'_x': Anything()}
            elif case_found.keyword == Keyword('foreach'):
                extra_scope = {'_foreachindex': Number(), '_x': Anything()}
            elif case_found.keyword == Keyword('catch'):
                extra_scope = {'_exception': Anything()}
            elif case_found.keyword == Keyword('spawn'):
                extra_scope = {'_thisScript': Script(), '_this': values[0]}
            elif case_found.keyword == Keyword('do') and type(values[0]) == ForType:
                extra_scope = {values[0].variable.value: Number()}
            for value, t_or_v in zip(values, case_found.types_or_values):
                # execute all pieces of code
                if t_or_v == Code and isinstance(value, Code) and self.code_key(value) not in self._executed_codes:
                    if case_found.keyword == Keyword('spawn'):
                        self.execute_unexecuted_code(self.code_key(value), extra_scope, True)
                        # this code was executed, so it does not need to be evaluated on an un-executed env.
                        del self._unexecuted_codes[self.code_key(value)]
                    else:
                        self.execute_code(value, extra_scope=extra_scope, namespace_name=self.current_namespace.name, delete_mode=True)

                # remove evaluated interpreter tokens
                if isinstance(value, InterpreterType) and value in self.unevaluated_interpreter_tokens:
                    self.unevaluated_interpreter_tokens.remove(value)

            assert(isinstance(outcome, Type))
        elif len(values) == 1:
            if not isinstance(values[0], Type):
                self.exception(
                    SQFParserError(statement.position, '"%s" is syntactically incorrect (missing ;?)' % statement))
            outcome = values[0]
        elif isinstance(base_tokens[0], Variable) and base_tokens[0].is_global:
            # statements starting with a global are likely defined somewhere else
            # todo: catch globals with statements and without statements
            pass
        elif len(possible_expressions) > 0:
            if isinstance(possible_expressions[0], UnaryExpression):
                types_or_values = []
                for exp in possible_expressions:
                    types_or_values.append(exp.types_or_values[1].__name__)

                keyword_name = possible_expressions[0].types_or_values[0].value

                message = 'Unary operator "%s" only accepts argument of types [%s] (rhs is %s)' % \
                          (keyword_name, ','.join(types_or_values), values[1].__class__.__name__)
            elif isinstance(possible_expressions[0], BinaryExpression):
                types_or_values = []
                for exp in possible_expressions:
                    types_or_values.append('(%s,%s)' % (exp.types_or_values[0].__name__, exp.types_or_values[2].__name__))

                keyword_name = possible_expressions[0].types_or_values[1].value

                message = 'Binary operator "{0}" arguments must be [{1}]'.format(
                    keyword_name, ','.join(types_or_values))
                if values[0].__class__.__name__ not in [x[0] for x in types_or_values]:
                    message += ' (lhs is %s' % values[0].__class__.__name__
                if values[0].__class__.__name__ not in [x[1] for x in types_or_values]:
                    message += ', rhs is %s)' % values[2].__class__.__name__
                else:
                    message += ')'
            else:
                assert False

            self.exception(SQFParserError(values[1].position, message))
            # so the error does not propagate further
            outcome = Anything()
            outcome.position = base_tokens[0].position
        else:
            helper = ' '.join(['<%s(%s)>' % (type(t).__name__, t) for t in tokens])
            self.exception(
                SQFParserError(base_tokens[-1].position, 'can\'t interpret statement (missing ;?): %s' % helper))
            # so the error does not propagate further
            outcome = Anything()
            outcome.position = base_tokens[0].position

        if isinstance(outcome, InterpreterType) and \
            outcome not in self.unevaluated_interpreter_tokens and type(outcome) not in (SwitchType, PrivateType, DefineStatement):
            # switch type can be not evaluated, e.g. for `case A; case B: {}`
            self.unevaluated_interpreter_tokens.append(outcome)

        assert(isinstance(outcome, BaseType))
        # the position of Private is different because it can be passed from analyzer to analyzer,
        # and we want to keep the position of the outermost analyzer.
        if not isinstance(outcome, PrivateType):
            outcome.position = base_tokens[0].position

        if statement.ending:
            outcome = Nothing()
            outcome.position = base_tokens[0].position

        return outcome

    def execute_other(self, statement):
        if isinstance(statement, Comment):
            string = str(statement)[2:]
            matches = [x for x in self.COMMENTS_FOR_PRIVATE if string.startswith(x)]
            if matches:
                length = len(matches[0]) + 1  # +1 for the space
                try:
                    parsed_statement = parse(string[length:])
                    array = parsed_statement[0][0]
                    assert(isinstance(array, Array))
                    self.add_privates(self.value(array))
                    # these are unknown values.
                    for token in array.value:
                        if isinstance(token, Statement):
                            token = token.base_tokens[0]
                        self.current_scope[token.value] = Anything()
                except Exception:
                    self.exception(SQFWarning(statement.position, '{0} comment must be `//{0} ["var1",...]`'.format(matches[0])))


def analyze(statement, analyzer=None):
    assert (isinstance(statement, Statement))
    if analyzer is None:
        analyzer = Analyzer()

    file = File(statement.tokens)

    file.position = (1, 1)

    arg = Anything()
    arg.position = (1, 1)

    analyzer.execute_code(file, extra_scope={'_this': arg})

    return analyzer

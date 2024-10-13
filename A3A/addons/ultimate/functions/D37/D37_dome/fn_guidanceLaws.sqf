if(!isServer) exitWith {};

//params ["_missile", "_target", "_speed",];
private _missile 	= param[0];
private _target 	= param[1];
private _parameters = param[2];
private _boost		= param[3, true]; //Separated for debug
private _skipSpeed 	= param[4, false];

//Speed, guidance, N
private _speed 		= _parameters select 0;
private _guidance 	= _parameters select 1;
private _N 			= _parameters select 2;
private _timeToMax	= _parameters select 4;
private _boostTime	= 1.5;

if(isNull _target) exitWith {};

//BOOST PHASE WITH NO GUIDANCE
private _time = time;
private _startDir = vectorDir _missile;
private _startSpeed = 0.4 * _speed;
private _endSpeed = 0.8 * _speed;
private _interpFactor = 0;
private _currSpeed = 0;

if(_boost and !_skipSpeed) then {
	while {time - _time < _boostTime} do {
		_interpFactor = (time - _time) / _boostTime;
		_newSpeed = _startSpeed + (_endSpeed - _startSpeed) * _interpFactor; 

		// Set new speed
		_guidVel = (_startDir vectorMultiply _newSpeed);
		_missile setVectorDir _startDir;
		_missile setVelocity _guidVel;
		sleep(0.05);
	};

	_currSpeed = _endSpeed;
};


//Skip the accelleration part, immediatly stores the maximum speed as the current one
if(_skipSpeed) then {
	_currSpeed = _speed;
};


//Weird issue with APN when engaging missiles idk 
private _targetIsMissile = (_target isKindOf "MissileBase");

//Variables for the missile and logic
private _increment = 0.044;
private _k = 1;
private _initialDist = (_missile distance _target);
private _closeEncounter = false;
private _medianLoops = 6;
private _leadAcc = 0;

private _lowestDist = _initialDist;
private _incrementSpeed = (_speed - _currSpeed) / _timeToMax;

//Vectorial quantities
private _guidVel 	= [0,0,0];
private _leadAcc 	= [0,0,0];
private _lastB 		= [0,0,0];
private _tgtAccNorm = [0,0,0];
private _posA 		= [0,0,0];
private _posB 		= [0,0,0];
private _LOS 		= [0,0,0];
private _velA 		= [0,0,0];
private _velB 		= [0,0,0];

private _time = time;
_loop = 0;

//STORE SCRIPT STATUS
_missile setVariable ["guidance", true, true];

//EXIT SCRIPT
private _guidanceEnabled = true;

while {alive _target} do {
	//Elapsed time
	_deltaT = (time - _time);

	//Speed
	_currSpeed = _currSpeed + _incrementSpeed * _deltaT;
	_currSpeed = _currSpeed min _speed;

	//LOS
	_posA = getPosASL _missile;
	_posB = getPosASL _target;
	_LOS = _posB vectorDiff _posA;
	_steering = _posA vectorFromTo _posB;
	_dist = _missile distance _target;

	//Relative velocity
	_velA = velocity _missile;
	_velB = velocity _target;
	_relVelocity = _velB vectorDiff _velA;

	if(_dist < _lowestDist) then {
		_lowestDist = _dist;
	};

	//Was close
	if(_dist < 1000) then {
		_closeEncounter = true;
	};
	//Now is far
	if(_closeEncounter and (_dist > 1500)) then {
		_mine = createMine ["DemoCharge_F", getPosATL _missile, [], 0];
		_mine setDamage 1;
		deletevehicle _missile;
		break;
	};

	switch (_guidance) do {
		//APN
		case 0: {
			//Impact Time Control Cooperative Guidance Law Design Based on Modified Proportional Navigation
			private _denominator = (speed _missile)*(1+ ((acos(_velA vectorCos _steering)/90)^2)/(2*(2 * _N - 1)));
			if(_denominator == 0) then {
				sleep(0.2);
				continue;
			};
			_tGo = (_dist/_denominator);
			if(isNil "_tgo") then {continue};

			//Zero effort miss
			_ZEM = _LOS vectorAdd (_relVelocity vectorMultiply _tGo);
			_losZEM = _ZEM vectorDotProduct _steering;
			_nrmZEM = (_ZEM vectorDiff (_steering vectorMultiply _losZEM));

			//Weird behaviour when attacking missiles (something like infinite acceleration)
			if(!_targetIsMissile) then {
				if(_loop == _medianLoops) then {
				//Target accelleration 
					_tgtAcc = _leadAcc vectorMultiply (1/_medianLoops);
					_tgtAccLos = _tgtAcc vectorDotProduct _steering;
					_tgtAccNorm = _tgtAcc vectorDiff (_steering vectorMultiply _tgtAccLos); 		
					_loop = 0;		

					_guidanceEnabled = _missile getVariable ["guidance", true];
					//CHECK IF WE HAVE TO BREAK OUT
					if(!_guidanceEnabled) then {
						break;
					};
				} else {
					_tgtAcc = (_velB vectorDiff _lastB) vectorMultiply (1/_increment);
					_lastB = _velB;
					_leadAcc = _leadAcc vectorAdd _tgtAcc;
					_loop = _loop + 1;
				};
			};

			//augmented prop nav with ZEM and lowered proportional gain
			if((_velB # 2) > 0) then {
				//_leadAcc = (_nrmZEM vectorMultiply _N) vectorMultiply (1/(_tGo ^ 2)); 
				//Calculate omega
				_rotation = _LOS vectorCrossProduct _relVelocity;
				_distance = _LOS vectorDotProduct _LOS;
				_rotation = _rotation vectorMultiply (1/_distance);
				
				//Desired accelleration to intercept
				_leadAcc = (_relVelocity vectorMultiply _N) vectorCrossProduct _rotation;
				_guidVel = (_leadAcc vectorMultiply _increment) vectorAdd _velA;

			} else {
				_leadAcc = (_nrmZEM vectorMultiply _N) vectorMultiply (1/(_tGo ^ 2)) vectorAdd (_tgtAccNorm vectorMultiply (_N/3)); 
				_guidVel = (_leadAcc vectorMultiply _increment) vectorAdd _velA;
			};
			
		};

		//PN
		case 1: {
			//Calculate omega
			_rotation = _LOS vectorCrossProduct _relVelocity;
			_distance = _LOS vectorDotProduct _LOS;
			_rotation = _rotation vectorMultiply (1/_distance);
			
			//Desired accelleration to intercept
			_leadAcc = (_relVelocity vectorMultiply _N) vectorCrossProduct _rotation;
			_guidVel = (_leadAcc vectorMultiply _increment) vectorAdd _velA;
		};

		//Pure pursuit
		case 2: {
			_guidVel = _steering;
		}
	};

	//Set new speed
	_guidVel = ((vectorNormalized _guidVel) vectorMultiply _currSpeed);
	_missile setVectorDir _guidVel;
	_missile setVelocity _guidVel;	

	//drawLine3D [_posA, _posA vectorAdd _LOS, [1,1,1,1]];
	sleep _increment;
};
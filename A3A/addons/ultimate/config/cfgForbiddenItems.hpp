class forbiddenItems
{
    class forbidden_unlimited_base
    {
        unlimited = 1;
        appearInCrates = 0;
    };
    class forbidden_limited_base : forbidden_unlimited_base
    {
        unlimited = 0;
    };
	
	class uns_m72used : forbidden_limited_base {};

    #include "cfgForbiddenItemsCW.hpp"
    #include "cfgForbiddenItemsFWA.hpp"
	#include "cfgForbiddenItemsGM.hpp"
	#include "cfgForbiddenItemsNIA.hpp"
    #include "cfgForbiddenItemsOPTRE.hpp"
    #include "cfgForbiddenItemsSMA.hpp"
    #include "cfgForbiddenItemsTOW.hpp"
};
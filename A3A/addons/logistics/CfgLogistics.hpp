class DOUBLES(ADDON,Nodes)
{
    class TRIPLES(ADDON,Nodes,Base)
    {
        class Nodes {};
        canLoadWeapon = 1; //if the vehicle can load weapons
    };

    #include "Nodes\3CBBAF.hpp"
    #include "Nodes\3CBFactions.hpp"
    #include "Nodes\CUP.hpp"
    #include "Nodes\D3S.hpp"
    #include "Nodes\GM.hpp"
    #include "Nodes\RDS.hpp"
    #include "Nodes\RHS.hpp"
    #include "Nodes\RNT.hpp"
    #include "Nodes\Scion.hpp"
    #include "Nodes\SPE.hpp"
    #include "Nodes\IFA.hpp"
    #include "Nodes\CSA.hpp"
    #include "Nodes\UNS.hpp"
    #include "Nodes\Vanilla.hpp"
    #include "Nodes\OPTRE.hpp"
    #include "Nodes\RACS.hpp"
    #include "Nodes\VN.hpp"
    #include "Nodes\WS.hpp"
    #include "Nodes\Aegis.hpp"
    #include "Nodes\CW.hpp"
    #include "Nodes\FFAA.hpp"
    #include "Nodes\PED.hpp"
    #include "Nodes\EMP.hpp"
	#include "Nodes\BRAF.hpp"
	#include "Nodes\AMF.hpp"
	#include "Nodes\TFC.hpp"
	#include "Nodes\NFtS.hpp"
};

class DOUBLES(ADDON,Cargo)
{
    class TRIPLES(ADDON,Cargo,Base)
    {
        offset[] = {0,0,0}; //the offset from the node(s) to load the cargo on too
        rotation[] = {0,1,0}; //the rotation from the vehicle model front
        size = 1; //the amount of nodes it occupies
        recoil = 0; //the recoil a weapon impacts on the vehicle when fired (per projectile)
        isWeapon = 0; //if the cargo is a weapon (needed for proper handling of mounted weapon)
        blackList[] = {}; //specific vehicles or models to blacklist from loading this weapon/cargo
    };

    #include "Cargo\3CBFactions.hpp"
    #include "Cargo\ACE.hpp"
    #include "Cargo\BWA3.hpp"
    #include "Cargo\CUP.hpp"
    #include "Cargo\GM.hpp"
    #include "Cargo\RHS.hpp"
    #include "Cargo\IFA.hpp"
    #include "Cargo\SPE.hpp"
    #include "Cargo\UNS.hpp"
    #include "Cargo\Vanilla.hpp"
    #include "Cargo\OPTRE.hpp" // has to be here. It uses the class for the vanilla fuel drum
    #include "Cargo\VN.hpp"
    #include "Cargo\WS.hpp"
    #include "Cargo\CW.hpp"
    #include "Cargo\FFAA.hpp"
	#include "Cargo\NFtS.hpp"

};

class DOUBLES(ADDON,Packable) {
    class TRIPLES(ADDON,Packable,Base)
    {
        packObject = "CargoNet_01_box_F";
    };

    #include "Packable\Vanilla.hpp"
};

class sc_ext_vehicles_data_gator_g12_flatbed_trans_p3d : TRIPLES(ADDON,Nodes,Base)
{
    class Nodes
    {
        class Node1
        {
            offset[] = {0.08,-0.4,-0.65};
        };
        class Node2
        {
            offset[] = {0.08,-1.2,-0.65};
        };
        class Node3
        {
            offset[] = {0.08,-2,-0.65};
        };
        class Node4
        {
            offset[] = {0.08,-2.8,-0.65};
        };
    };
};
class sc_ext_vehicles_data_gator_g12_container_p3d : sc_ext_vehicles_data_gator_g12_flatbed_trans_p3d {};

class sc_wheeled_model_gator_g12_flatbed_p3d : TRIPLES(ADDON,Nodes,Base)
{
    class Nodes
    {
        class Node1
        {
            offset[] = {0.08,-0.6,1.2};
        };
        class Node2
        {
            offset[] = {0.08,-1.4,1.2};
        };
        class Node3
        {
            offset[] = {0.08,-2.2,1.2};
        };
        class Node4
        {
            offset[] = {0.08,-3,1.2};
        };
    };
};

class sc_wheeled_model_gator_g12_tc_p3d : TRIPLES(ADDON,Nodes,Base)
{
    class Nodes
    {
        class Node1
        {
            offset[] = {0,-1.2,1.3};
        };
        class Node2
        {
            offset[] = {0,-2,1.3};
        };
    };
};
class sc_ext_vehicles_data_gator_g12_tc_a_p3d : sc_wheeled_model_gator_g12_tc_p3d {};

class sc_wheeled_model_gator_g12_to_p3d : TRIPLES(ADDON,Nodes,Base)
{
    class Nodes
    {
        class Node1
        {
            offset[] = {0,-1.2,1.2};
        };
        class Node2
        {
            offset[] = {0,-2,1.2};
        };
    };
};

class sc_wheeled_model_saurus_apc_saurus_armed_apc_p3d : TRIPLES(ADDON,Nodes,Base)
{
    class Nodes
    {
        class Node1
        {
            offset[] = {0,0.2,0.75};
        };
        class Node2
        {
            offset[] = {0,-0.6,0.75};
        };
        class Node3
        {
            offset[] = {0,-1.4,0.75};
        };
        class Node4
        {
            offset[] = {0,-2.2,0.75};
        };
        class Node5
        {
            offset[] = {0,-3,0.75};
        };
        class Node6
        {
            offset[] = {0,-3.8,0.75};
        };
    };
};

class sc_wheeled_model_saurus_apc_saurus_armed_p3d : sc_wheeled_model_saurus_apc_saurus_armed_apc_p3d {};
class sc_wheeled_model_saurus_apc_saurus_unarmed_p3d : sc_wheeled_model_saurus_apc_saurus_armed_apc_p3d {};

class sc_ext_heli_data_comanche_v_p3d : TRIPLES(ADDON,Nodes,Base)
{
    class Nodes
    {
        class Node1
        {
            offset[] = {0,-5,1};
        };
        class Node2
        {
            offset[] = {0,-5.8,1};
        };
    };
};

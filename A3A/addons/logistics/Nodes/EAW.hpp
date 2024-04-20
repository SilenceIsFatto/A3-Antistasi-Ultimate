class EAW_Dodge1936_Pickup_Military_IJA : TRIPLES(ADDON,Nodes,Base)
{
        class Nodes
    {
        class Node1
        {
            offset[] = {0,-0.54,-0.52};
        };
        class Node2
        {
            offset[] = {0,-1.34,-0.52};
        };
        class Node3
        {
            offset[] = {0,-2.14,-0.52};
        };
        class Node4
        {
            offset[] = {0,-2.94,-0.52};
        };
    };
};

class EAW_Dodge1936_Pickup_Military_ROC : EAW_Dodge1936_Pickup_Military_IJA {};
class EAW_Dodge1936_Pickup : EAW_Dodge1936_Pickup_Military_IJA {};


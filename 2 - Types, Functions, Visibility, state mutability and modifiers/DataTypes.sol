pragma solidity ^0.4.0;

contract DataTypes {

    bool isAlive;

    // Position grid goes from -x to x on both axis with 0  as the center
    /*
           (-N,-N) . . . . . . . .(0,-N) . . . . . . . . (N,-N)
             .                      .                      .
             .                      .                      .
             .                      .                      .
             .                     (0,-1)                   .
          (-N,0) ... (-2,0) (-1,0) (0,0) (1,0) (2,0) ... (N,0)
             .                      0,1                    .
             .                      .                      .
             .                      .                      .
             .                      .                      .
           (-N,N). . . . . . . . . .(0,N) . . . . . . . .  (N,N)
     */
    int8 xPosition;
    int8 yPosition;



    function DataTypes(){


    }
}

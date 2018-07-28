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

pragma solidity ^0.4.21;
import "./Random.sol";

contract Playground is Random{

    bool isCreated;
    uint128 size;
    int8 houses;
    uint8[10][10] ground;

    struct Player {
        string name;
        uint8 level;
    }

    mapping(address=> Player) players;

    function getXY(uint256 x, uint256 y) view public returns(uint8){
        return ground[x][y];
    }

    function Playground(uint128 playGroundSize, int8 ammountOfHouses) public {
        houses = ammountOfHouses;
        size=playGroundSize;

        for(uint i=0 ; i<size ;i++){
            for(uint j=0; j<size; j++){
                uint256 randomInt = randrange(0,100);
                if(randomInt> 75){
                    ground[i][j]=1;
                }else
                    ground[i][j]=0;
            }
        }
    }

}
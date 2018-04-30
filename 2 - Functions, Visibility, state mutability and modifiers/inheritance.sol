pragma solidity ^0.4.21;
import "github.com/Arachnid/solidity-stringutils/src/strings.sol";

contract Animal {

    string internal species;
    string internal sound;
    using strings for *;

    function talk() returns(string){
        var s = "The ".toSlice().concat(species.toSlice());
        var s1 = s.toSlice().concat(" says ".toSlice());
        var s2 = s1.toSlice().concat(sound.toSlice());
        return s2;
    }

}

contract Dog is Animal {

    function Dog(){
        species = "Dog";
        sound = "Wof!";
    }
}

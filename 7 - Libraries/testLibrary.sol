pragma solidity 0.4.21;

import "5 - Libraries/myLibrary.sol";

contract testLibrary{

    using IntExtended for uint;

    function testIncrement(uint _base) public returns (uint){
        return IntExtended.increment(_base);
    }

    function testDecrement(uint _base) public returns (uint){
        return IntExtended.increment(_base);
    }

    function testIncrementBy(uint amount, uint _base) public returns (uint){
        return IntExtended.incrementBy(amount, _base);
    }

    function testDecrementBy(uint amount, uint _base) public returns (uint){
        return IntExtended.decrementBy(amount, _base);
    }
}
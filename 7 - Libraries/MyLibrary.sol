pragma solidity 0.4.21;

library IntExtended {

    function increment(uint _self) pure public returns(uint){
        return _self+1;
    }

    function decrement(uint _self) pure public returns(uint){
        return _self-1;
    }

    function incrementBy(uint amount, uint _self) pure public returns(uint){
        return _self+amount;
    }

    function decrementBy(uint amount, uint _self) pure public returns(uint){
        return _self-amount;
    }

}
pragma solidity ^0.4.0;

contract Modifiers {

    string private a;
    string public b;
    string internal c;

    // Custom modifier
    modifier myModifier(){
        //Some code...
        // Rest of the function
        _;
    }

    function modded() myModifier public{}
    // Functions that promise not to modify the contract state
    function foo() view{ }
    function bar() view{ }
}

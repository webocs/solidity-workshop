// Define a version of solidity
pragma solidity ^0.4.24;

// Declare a contract with a given name
contract helloWorld {

    // Member variables (Persistent storage)
    string private privateMsg;

    // Constructor function
    function helloWorld(string msg) {

        // Poor string management requires converting to bytes and store in memory to check size
        bytes memory tempEmptyStringTest = bytes(msg);

        // If msg is not null, store it in the privateMsg var
        // Otherwise  assign Hello World
        if(tempEmptyStringTest.length>0){
            privateMsg= msg;
        }
        else{
            privateMsg="Hello World!";
        }
    }

    function getMsg() public returns(string){
        return privateMsg;
    }
}

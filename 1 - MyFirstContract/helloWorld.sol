pragma solidity ^0.4.21;

contract HelloWorld {

    string private message;

    function HelloWorld(string myMessage) {
        bytes memory tempEmptyStringTest = bytes(myMessage);
        if(tempEmptyStringTest.length!=0){
            message = myMessage;
        } else {
            message = "Hello World!";
        }
    }

    function greet() returns(string){
        return message;
    }


}
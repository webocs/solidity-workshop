pragma solidity ^0.4.24;

contract errors {
    function testAssert(){
        assert(1 == 2);
    }

    function testRequire(){
        require(2==1);
    }

    function testRevert(){
        revert();
    }
}

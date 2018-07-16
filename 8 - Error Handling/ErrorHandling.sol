pragma solidity 0.4.21;

// Error handling
contract testErrorHandling{

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
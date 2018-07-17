pragma solidity 0.4.24;

contract DataTypes{

    // solidity provides a wide range of sizes from which you should pick the one that suits you better
    // Always Remember size matters.. because it'll cost you more

    // Unsigned int, size varies from 8 to 8 bits.. Ranging from 8 to 256

    // Unsigned integer
    uint8 miSizeUint;
    uint256 maxSizeUint;

    // Integer
    int8 minSizeInt;
    int256 maxSizeInt;

    function unsignedIntegers() returns(uint256){
        uint8 a= 1;
        uint8 b= 2;
        uint8 c= a+b; // c=3 because it fits in a uin8

        a = 255;
        b =2;
        c= a + b; // c=1 because 257 does not fit in 8 bits

        // Even tho d can contain a + b the expression is resolved before being assigned
        // So, d = 0 anyway..
        uint256 d= a+b;

        // How do we solve this?
        // For each data type there is a cast function
        uint256 c256= uint256(a)  + uint256(b); // c256 = 257

        return c256;

    }



}
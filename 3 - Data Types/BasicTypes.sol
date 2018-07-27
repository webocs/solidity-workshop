pragma solidity 0.4.24;

contract DataTypes{


    function DataTypes(){}
    // solidity provides a wide range of sizes from which you should pick the one that suits you better
    // Always Remember size matters.. because it'll cost you more

    // Unsigned int, size varies from 8 to 8 bits.. Ranging from 8 to 256

    // Unsigned integer
    uint8 miSizeUint;
    uint256 maxSizeUint;

    // Integer
    int8 minSizeInt;
    int256 maxSizeInt;

    function uintExample() returns(uint256){
        uint8 a= 1;
        uint8 b= 2;
        uint8 c= a+b; // c=3 because it fits ain a uin8
        a = 255;
        b =2;
        c= a + b; // c=1 because 257 does not fit in 8 bits
        // Operators:
        // Logical:  <=, <, ==, !=, >= and >
        // Bit: &, | ,^ (bitwise exclusive or) and ~ (bitwise negation)
        // Arithmetic: +, -, --, ++, *, /, % (module), ** (power), << (left shift) and >> (right shift)


        // Some remarks..
        // Even tho d can contain a + b the expression is resolved before being assigned
        // So, d = 0 anyway..
        uint256 d= a+b;

        // How do we solve this?
        // For each data type there is a cast function
        uint256 c256= uint256(a)  + uint256(b); // c256 = 257
        return c256;
    }

    // Integers
    // Same as Unsigned integers but with sign..
    function intExample() returns(int256){
        int8 a= 1;
        int8 b= 2;
        int8 c= a+b; // c=3 because it fits in a uin8

        // 8 bits are splitted for positive and negative numbers
        // Int ranges from -128 to 127
        a = 127;
        b =1;
        c= a + b; // c=-128 because 127 does not fit in 8 bits
        // Operators:
        // Logical:  <=, <, ==, !=, >= and >
        // Bit: &, | ,^ (bitwise exclusive or) and ~ (bitwise negation)
        // Arithmetic: +, -, --, ++, *, /, % (module), ** (power), << (left shift) and >> (right shift)


        // Some remarks..
        // Even tho d can contain a + b the expression is resolved before being assigned
        // So, d = 0 anyway..
        int256 d= a+b;

        // How do we solve this?
        // For each data type there is a cast function
        int256 c256= int256(a)  + int256(b); // c256 = 128
        return c256;
    }


    // Booleans
    function boolExample() public returns(bool){
        bool foo = true;
        foo = !foo; // Negation example
        // Operators are the same as JS
        // !, &&, ||, == and !=
        // Short circuiting is a thing
        return foo;
    }

    // Solidity has no Floating point data type
    // Fixed point is on the way..  not fully implemented yet
    // Skipping for now..
    function fixedPointExample(){
        // Nothing to see here..
        // TODO: saved for later..
    }

    // Address type
    // Used for storing ethereum addresses (NOT memory addresses but eth accounts)

    function addressExample() public payable returns(address) {
        // Special object msg contains several properties
        // msg.sender is the account address of the tx generator
        address example = msg.sender;

        // the address type has several members, for example:
        example.balance; // Eth balance on this account
        example.transfer(10); // function to transfer ether to example account

        // Many others.. check ethereum oficial documentation for mor information!
        return example;
    }

    // Ether type
    // The ether type is used for payments it can equal to the correct amount of subunits
    // ether - 1,000,000,000,000,000 wei (1e18)
    // finney - 1,000,000,000,000,000 wei (1e15 wei)
    // szabo - 1,000,000,000,000 wei (1e12 wei)
    // wei - 1 wei
    event logEther(uint amount);
    function etherExample(){
        uint eth = 1 ether;
        uint zbo = 1 szabo;
        uint fnn = 1 finney;
        uint we = 1 wei;

        emit logEther(eth);
        emit logEther(fnn);
        emit logEther(zbo);
        emit logEther(we);
    }

}

/*
 This example shows how to claim ownership of a smart conctract
 using a custom function modifier
 */

contract Ownership{

    // Storing the owner
    address owner;

    // Declaring our own function modifier
    // This modifier requires the msg sender to equal the owner
    modifier ownerOnly(){
        // Will fail the transaction if does not assert..
        require(owner == msg.sender);
        // The _ is replaced by the modified function definition
        _;
    }

    // Assigning the ownserhip to the contract deployer
    function Ownership(){
        owner = msg.sender;
    }

    // Self destruct
    function destroy() ownerOnly{
        selfdestruct();
    }

}
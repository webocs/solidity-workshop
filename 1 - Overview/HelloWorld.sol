pragma solidity 0.4.21;

// Contract definition
contract HelloWorld{

    // Super secret message
    string private privateMessage;

    // Wanna see the message? you've got to pay!
    uint private messagePrice;

    // Maintaining ownership..
    address owner;

    // Logging...
    event logBalance(uint balance);
    event logValue(uint balance);


    // Custom modifier..
    modifier ownerOnly(){
        require(owner == msg.sender);
        _;
    }

    // Contract Constructor
    function HelloWorld(string message, uint mPrice) public {
        // Setting up ownership
        owner = msg.sender;

        // Storing the super secret message
        privateMessage = message;

        // Storing the price
        messagePrice = mPrice;

    }

    // Self destruct mechanism..
    function destroy() public ownerOnly{
        // Don't forget your earnings
        collectEarnings();

        // Good bye world.. :(
        selfdestruct(this);
    }

    // Collecting our earnings..
    function collectEarnings() public{
        // Lets log our balance..
        emit logBalance(address(this).balance);

        // Get the money!!
        owner.transfer(address(this).balance);
    }

    // Buy your access to the message..
    function accessMessage() public  payable returns(string){
        // How much did you send?
        emit logValue(msg.value);

        // Have they pay enough?
        if(msg.value> messagePrice)
            return returnMessage();
        else
            revert();
    }

    // How  much money do i have?
    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    // please give me the message..
    function returnMessage() private view returns(string){
        return privateMessage;
    }

}

pragma solidity 0.4.24;
import "./Random.sol";

// Contract definition
contract QuoteDispenser is Random{

    // Modifiers
    modifier ownerOnly(){

    }

    // Contract Constructor
    constructor( uint qPrice) public {

    }

    // Public functions
    function destroy() public ownerOnly{

    }

    function collectEarnings() public{

    }

    // Payables
    // Buy your access to the message..
    function getAQuote() public  payable returns(string){

    }

    // Views
    // How  much money do i have?
    function getBalance() public view ownerOnly returns(uint){
    }

    function getMyPurchases() public view returns (uint256[]) {
    }

    // Private function
    // please give me a quote..
    function returnQuote() private returns(string){

    }

}

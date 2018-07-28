pragma solidity 0.4.21;

// Interface Equivalent
contract  Regulated{
    //Abstract
    function checkValue(uint)  public returns(bool);
}

// IS == inheritance && IS == implement interface
contract User is Regulated{

    // Internal == protected
    uint internal value;
    address private owner;

    // Fucntion modifier, ACL contract owner
    modifier ownerFunc(){
        require(owner == msg.sender);
        _;
    }

    // Super constructor
    function User(uint money) public {
        owner = msg.sender;
        value =money;
    }

    // Methods
    function deposit(uint amount) public ownerFunc {
        value += amount;
    }

    function withdraw(uint amount)public{
        if(checkValue(amount))
            value -= amount;
    }

    function balance() public returns (uint){
        return value;
    }

    // Interface implementation
    function checkValue(uint amount) public returns (bool){
        return amount >= value;
    }

}

contract Client is User(10){
    string private name;
    uint256 private age;

    // Overriten methods
    function balance() public returns (uint){
        return value-1;
    }

    function setName(string newName) public {
        name = newName;
    }

    function getName() public returns(string){
        return name;
    }

    function setAge(uint256 newAge) public {
        age = newAge;
    }

    function getAge()public returns(uint256){
        return age;
    }
}


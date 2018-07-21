pragma solidity 0.4.21;

// Interface Equivalent
contract  Regulator{
    //Abstract
    function checkValue(uint)  public returns(bool);
    function loan()  public returns(bool);
}

// IS == inheritance && IS == implement interface
contract Bank is Regulator{
    
    // Internal == protected
    a private value;
    address private owner;

    // Fucntion modifier, ACL contract owner
    modifier ownerFunc(){
        require(owner == msg.sender);
        _;
    }
    function Bank(uint amount) public {
        owner = msg.sender;
        value =amount;
    }

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

    function checkValue(uint amount) public returns (bool){
        return amount >= value;
    }

    function loan()  public returns (bool){
        return value>0;
    }
}


contract myFirstContract is Bank(10){
    string private name;
    uint256 private age;

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


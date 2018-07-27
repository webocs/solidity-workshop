pragma solidity 0.4.21;

contract  Hurtable{
    //Abstract
    function checkHealth(uint)  public returns(bool);
    function hurt(uint)  public returns(uint);
}

// IS == inheritance && IS == implement interface
contract Character is Hurtable{
    // Internal == protected
    uint private health;
    address private owner;

    // Fucntion modifier, ACL contract owner
    modifier ownerFunction(){
        // Constraint for the modifier
        require(owner == msg.sender);
        _;
    }

    function Player(uint startingHealth) public {
        owner = msg.sender;
        health =startingHealth;
    }

    function heal(uint amount) public ownerFunc {
        health += amount;
    }

    function currentHealth() public returns (uint){
        return health;
    }

    function canTakeDamage(uint amount) public returns (bool){
        return health >= amount;
    }

    function hurt(uint damage)  public returns (uint){
        if(canTakeDamage(amount))
            value -= amount;
        else
            value = 0;
        return value;
    }
}


contract Orc is Character(10){
    string private name;
    uint256 private damage;

    function setName(string newName) public {
        name = newName;
    }

    function getName() public returns(string){
        return name;
    }

    function damage(uint256 newDamage) public {
        damage = newDamage;
    }

    function getDamage()public returns(uint256){
        return damage;
    }
}

pragma solidity 0.4.24;

import "./Random.sol";

// Contract definition
contract QuoteDispenser is Random{

    // Quotes Array
    string[20] private quotes =
    ["Lisa, los vampiros son seres inventados, como los duendes, los gremlins y los esquimales.",
    "¿Qué te paso Viejo? Antes eras chévere.",
    "¡Bart, deja de molestar a Satanás!",
    "Comprenlo Muchachos, No Me Hice Rico Firmando Cheques",
    "No estaba dormido… estaba EBRIO!!!",
    "Los Santos fueron una basofia anoche, todo es basofia. He visto muchas basofias, pero estos son la mayor basofias entre las basofias",
    "Di algo o van a creer que eres idiota....A lo hecho, pecho.",
    "Que hacen en mi alcantarilla para cadaveres!!! Alcantarilla para cadaveres,quise decir tuberia de la inocencia.",
    "La hiciste llorar, y luego yo lloré, y Maggie rió... todo fue una confusión",
    "Es importante aprender a torear las cosas. Es lo que nos separa de los animales... ¡Excepto del toro!",
    "Me gusta la cerveza fria, la tele fuerte y los homosexuales, LOCAS LOCAS!",
    "Para mentir se necesitan dos uno que mienta y otro que crea Marge",
    "Te advierto que si vas a enfadarte conmigo cada vez que haga una estupidez, no tendré más remedio que dejar de hacer estupideces",
    "Las mujeres son como las cervezas...se ven bien,huelen bien y matarias a tu madre por conseguir una.",
    "Tendrá todo el dinero del mundo pero hay algo que nunca podrá comprar... un dinosaurio",
    "Bart te presento a tu nuevo hermano Juan Topo. Intenta besarlo, es como besar a una palanqueta",
    "AHHH Creo que odio a michael jackson, no la verdad que canta bien y es noble.",
    "Es un niño, y que niño.......No Homero es niña ese el cordon umbilical",
    "Me lo llevo!!!..No lo tiene en rubio?"];

    // Wanna get a quote? you've got to pay!
    uint public quotePrice;

    // Maintaining ownership..
    address owner;

    // Logging...
    event logBalance(uint balance);
    event logValue(uint balance);
    event dyingLog(string message);

    // Creating a Purchases history
    mapping(address => uint256[])  purchases;
    function getMyPurchases() public view returns (uint256[]) {
        return purchases[msg.sender];
    }

    // Custom modifier..
    modifier ownerOnly(){
        require(owner == msg.sender);
        _;
    }

    // Contract Constructor
    // Depending on the solity version constructor might be declared as:
    //function QuoteDispenser
    constructor( uint qPrice) public {
        // Setting up ownership
        owner = msg.sender;

        // Storing the price
        quotePrice = qPrice;
    }

    // Self destruct mechanism..
    function destroy() public ownerOnly{
        // Don't forget your earnings
        collectEarnings();

        // Good bye world.. :(
        emit dyingLog("Good Bye world!");
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
    function getAQuote() public  payable returns(string){
        // How much did you send?
        emit logValue(msg.value);

        // Have they pay enough?
        if(msg.value> quotePrice)
            return returnQuote();
        else
            revert();
    }

    // How  much money do i have?
    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    // please give me a quote..
    function returnQuote() private returns(string){
        uint256 randomInt = randrange(0,19);
        purchases[msg.sender].push(randomInt);
        return quotes[randomInt];
    }

}

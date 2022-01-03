pragma solidity >=0.7.4;

contract MyToken {
    address public minter;
    
    mapping (address =>uint) public balance;
    uint public constant RETRate = 1000000000000000; //one Royal Entry Token Cost 1 finney;
    
    
    constructor() {
        minter = msg.sender;
    }
    function mint(address receiver, uint amount ) public {
        require(msg.sender == minter);
        balance[receiver] += amount;
    }
    
    function viewTikets() public view returns (uint){
        
        return(balance[msg.sender]);
        
    }
    
    function enterCoffeeShop(address payable _shopAddress ,uint _tickets ) public returns (bool success) { // assuming one person entry require one Ticket.
        
        require(_tickets <= balance[msg.sender], "Insufficient Tickets to Enter the Shop");
        balance[msg.sender] -= _tickets;
        balance[_shopAddress] += _tickets;
        return true;//"Entry to Coffee Shop Granted";
    } 
    
    function sendTokenToPartner(address payable _to, uint amount) public { // if you wants to sent tickets to companions. enter address and number of tickets.
        require(balance[msg.sender] >= amount, "Insufficient Balance");
        balance[msg.sender] -= amount;
        balance[_to] += amount;
       // emit Transfer(msg.sender, _to, amount);
       // return true;
    }
    
    function buyRETs(uint _tickets) payable public returns (bool success) { // one Ticket cost One fenney, and it should be passed through value.
        //NOTE:: NUMBER OF TICKETS SHOULD MATCH OR BE LESSER THAN VALUE ENTERED AND results, Tickets value will be added to balance and extra value amount will be sent back to buyer.
        // ENTER BOTH VALUE AND BUY TICKETS.
        uint sender_value = msg.value;
        require((msg.value / RETRate) >= _tickets);
        sender_value  -= (_tickets * RETRate);
        balance[msg.sender] += _tickets;
        //(msg.value / RETRate);
        msg.sender.transfer(sender_value);
        //assert(balance[msg.sender],amount);
        return true;
    }
    
    function sellRETs(uint _tickets) public returns (bool succrss){ // sell function requires number of tickets msg.sender wants to sell.
        require(_tickets <= balance[msg.sender], " Insufficeint RETs to Sell");
        balance[msg.sender] -= _tickets;
        msg.sender.transfer(_tickets * RETRate);
        return true;
    } 
}
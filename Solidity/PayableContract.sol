pragma solidity ^0.4.18;

contract payableContract{

    event TransferHappeneded(address from, uint value);
    
    function transferEther() payable {
        TransferHappeneded(msg.sender, msg.value);
    }
    
    // Fallback function
    function() payable{

    }

    function getBalance() view returns (uint){
        return this.balance;
    }
    
    uint public stateVariable;
    
    function logicWithSend(address to){
        to.send(100);
        stateVariable = 1;
    } 
    
    function logicWithTransfer(address to){
        to.transfer(100);
        stateVariable = 1;
    } 

}
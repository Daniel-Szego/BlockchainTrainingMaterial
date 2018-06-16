pragma solidity ^0.4.4;

contract MyNotSosecureToken {
    mapping(address => uint) balance;
    address owner;
    
    constructor() {
        owner = msg.sender;
        balance[msg.sender] = 100;
    }
    
    function getBalance(address a) view returns(uint){
        return balance[a];
    }
    
    function transfer(address to, uint amountToSend) {

        for (var i = 1; i < 500; i++){
            var j = 2;
            j +=1;
        }
        
    }
    
}
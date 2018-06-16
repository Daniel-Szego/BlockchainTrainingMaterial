pragma solidity   ^0.4.4;

contract MyTokenFunction {
  mapping(address => uint) balances;   
  address owner;    
    
  function getBalance(address a) view returns(uint) {
      return balances[a];
  }   
  
  function MytokenFunction() {
      owner = msg.sender;
  }
 
  function setBalance(address to, uint nnewBalance) {
      require(owner == msg.sender);
      balances[to] = nnewBalance;
  }
    
  function transfer(address to, uint amount) {
      require((balances[msg.sender] - amount) > 0);
      balances[msg.sender] -= amount;
      balances[to] += amount;
      for(var i = 0; i < 300; i++)
      {
          uint j = 1;
      }
  }
}
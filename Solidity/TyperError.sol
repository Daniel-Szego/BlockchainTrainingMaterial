pragma solidity ^0.4.18;


// typer errors
contract Type {
    
    function TypeConversion() view returns (uint){
        uint i = 500;
        uint8 j = uint8(i);
        return j;
    }
}

// forcing ether to a contract
contract NonPayableContract {
    function getContractBalance() view public returns(uint) {
        return this.balance;
    }
    
    function() payable {
        revert();
    }
}

contract ForceEtherToContract {
    address contractAddress;
    
    constructor(address aToForce) {
        contractAddress = aToForce;
    }
    
    function () payable {
        
    }
    
    function kill() {
        selfdestruct(contractAddress);
    }
    
    function getContractBalance() view public returns(uint) {
        return this.balance;
    }
}


//private variable
contract PrivateVariable{
    string private Password = "IXperience123" ;
} 

//web3.eth.getStorageAt(contractAddress, 0)

//reentrancy




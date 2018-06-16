pragma solidity ^0.4.4;

contract OwnedToken{
    mapping(address => uint) balance;
    address owner;
    address poweruser;
    address bycicleowner;
    
    function OwnedToken() {
        owner = msg.sender;
    }
    
    event NewTokenCreated(address fromAddress, uint amount);
    event TokenDestroyed(address fromAddress);
    

    function mintToken(uint tokenToMint)  {
        
        NewTokenCreated(msg.sender, tokenToMint);
        // minting functionality
    } 
    
    function splitToken()  {
        // splitting functionality
        
        NewTokenCreated(msg.sender, 1);
    }
    
    function destroyToken()  {
        // destroy functionality
        
        TokenDestroyed(msg.sender);

    }
    
    function transferToken() {
        
    }
    
    function getInformation() view returns (uint) {
        return 11;
    }
    
    function kill() {
        require (msg.sender == owner);
        selfdestruct(owner);
    }
    
    function testAssembly(uint input) returns (uint res) {
        assembly{
            let a:=2
            res := mul(a,input)
        }
    }
    
    function testHighLevel(uint input) returns (uint res) {
        uint a = 2;
        return a* input;
    }


}
    
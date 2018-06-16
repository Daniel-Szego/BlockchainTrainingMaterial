pragma solidity ^0.4.4;

contract Token {
    string public TokenName = "MyToken";
    uint private Supply;
    uint public iSupply = 10;
    
    mapping(address => uint) balances;
    address owner;

    function Token (uint initialSupply){
        Supply = initialSupply;
        owner = msg.sender;
        balances[owner] = Supply;
    }
    
    function transfer(address to, uint amount) {
        if (balances[msg.sender] > amount) {
            balances[msg.sender] -= amount;
            balances[to] += amount;
        }
    }
    
    function TestFunction() private {
        
    }
    
    function geBalance(address actualAddress) view returns (uint) {
        return balances[actualAddress];
    }
    
}

contract LikeableSmartContract{
    string public LikeableSmartContractName;
    mapping(address => uint) likes;
    uint public iSupply = 33;
    
    function LikeableSmartContract(string iname){
        LikeableSmartContractName = iname;
    }

    function like() {
        likes[msg.sender] ++;
    }
    
    function getLikes(address input) view returns(uint){
        return likes[input];
    }
}

contract Coin is Token, LikeableSmartContract {
    string CoinName;
    uint public iSupply = 22;

    function getAllISupplies() view returns (uint) {
        return Token.iSupply + LikeableSmartContract.iSupply + iSupply;
    }

    function Coin (string coinName, uint initialSuppy) Token (initialSuppy) LikeableSmartContract(coinName) {
        CoinName = coinName;
    }
    
    function like() {
        mintCoin(1);
        TestFunction();
    }

    function mintCoin(uint amountToMint) internal {
        balances[msg.sender] += amountToMint;
        //Supply += amountToMint;
        
    }
    
}


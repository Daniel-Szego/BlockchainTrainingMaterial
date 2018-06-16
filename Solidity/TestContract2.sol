pragma solidity ^0.4.4;

contract SimpleCoin {
    string CoinName = "WST";
    uint CoinSupply;
    mapping (address => uint) balances;
    
    function WinstonCoin() {
        CoinSupply = 10.000;
        balances[msg.sender] = 10.000;
    }
    
    function transferWinststonCoin (address to, uint amount) {
        require((balances[msg.sender] - amount) > 0);
        balances[msg.sender] -= amount;
        balances[msg.sender] += amount;
        throw;    
    }
    
    function getBalance() {}
}



contract TestContract{
    int testNumberBlockchainState;
    string public testString; 
    int aSecondNumber;
    fixed test;
    address myAddress = 0x000000000000000000;
    
        
    string[] helloExpressions;

    struct MyStruct {
        int internalProperty1;    
        int internalProperty2;    
        string internalPropertyString;    
    }

    MyStruct myStructureInstance;

    function TestContract(int inputNumber) {
        myAddress = msg.sender;
        myStructureInstance.internalProperty1 = 1;
        myStructureInstance.internalProperty2 = 2;
        myStructureInstance.internalPropertyString = "myStringTest";
        
        
        
        helloExpressions.push("hello");
        helloExpressions.push("hi");
        helloExpressions.push("hallo");
        helloExpressions.push("hoi");
    
        for (int i = 1; i < 21; i++) {
            // do something iteratively
        }
    
        if (inputNumber == 2){
            // do somthing
        }
        else if (inputNumber > 2) {
            // do something else
            
        }
        else {
            
        }
        

        string myFirstExp = helloExpressions[0];

    }

    function myFunction(int myInput) returns (string) {
    testString = "test1";
    testString = "test2";
    }
    
    
    
}

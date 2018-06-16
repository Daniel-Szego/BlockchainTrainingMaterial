pragma solidity ^0.4.4;

contract Animal{
    string Name;
    enum Size{
        Big,
        Small,
        Medium
    }
}

contract Mammal is Animal{
    string Name;
    int[] myArray;
    
    function test(){

    myArray.push(1);
    
    int[] memory myArray2 = int[](10);

        Animal.Name = "xx";
    }
    
}


contract TestContract{
    int testNumber;
    string public testString = "hello world";
    int aSecondNumber;

    struct TestStruct{
        uint x;
        uint y;
    }

    function myFunction(int myInput) returns (string) {
        return "hello world";
//        for (var i = 0; i < 300; i++){
//            uint j = 2;
//        }
    }
    
    function testStructFunction(TestStruct s) internal {
        
        
    }
}



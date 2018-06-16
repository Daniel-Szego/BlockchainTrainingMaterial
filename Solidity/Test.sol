pragma solidity ^0.4.4;

contract TestContract{

    enum MyEnum {
        one, 
        two,
        three
    }

    struct MyStruct{
        uint myNumber;
        string myString; 
    }

  MyStruct myStruct;


  int constant myInt = 0x0001;
    
  function myFunction (int a){

   }

  function callFunction(int b) returns (uint) {
     var callingFunction = myFunction;
     bytes32[] array;
     array.push(2);
     callingFunction(2);
     

     myStruct = MyStruct(1,"hello");
     uint myIntFromStruct = uint(MyEnum.two);
     
     return this.balance;
  }
}
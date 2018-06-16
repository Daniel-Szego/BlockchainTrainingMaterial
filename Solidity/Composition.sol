pragma solidity ^0.4.18;

contract Calculation{
    
    uint multiplication;
    
    function Calculation(uint imult){
        multiplication = imult;
    }
    
    function ComplexCalculation(uint input) view returns (uint) {
        return multiplication  * input;
    }
}

contract CalculationProxy{
    Calculation calculation;
    
    function CalculationProxy() {
        calculation = new Calculation(2);
    }
    
    function ComplexCalculation(uint input) view returns (uint) {
        return calculation.ComplexCalculation(input);
    }
    
    function changeInternalCalculationSmartContract(address input){
        calculation = Calculation(input);
    } 
    
}


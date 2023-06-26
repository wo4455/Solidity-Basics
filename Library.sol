pragma solidity ^0.8.0;

// declare a library. Helps to not re-use code
// can put library in diff file and import it (import "./Math.sol")
library Math {

    function divide(int num1, int num2) internal pure returns(int) {
        require(num2 != 0, 'Cannot divide by 0');
        return num1 / num2;
    }

}

contract Library {
    int public value;

    function calculate(int a, int b) public {
        value = Math.divide(a, b); // using the library
    }
}

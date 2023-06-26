pragma solidity ^0.8.0;

// Parent 
contract Inheritance {
    string public name;
    mapping(address => uint) public balances;

    constructor(string memory _name) {
        name = _name;
    }

    function mint() public virtual {
        balances[tx.origin]++; // increment the balance of the sender by 1
    }
}

// Child
contract Inheritance2 is Inheritance {
    string public symbol;
    address[] public owners;
    uint ownerCount;

    // passes _name from child to constructor of parent 
    constructor (string memory _name, string memory _symbol) Inheritance(_name) {
        symbol = _symbol;
    }

    // override mint function
    function mint() public override {
        super.mint(); // keep functionality from other mint function too
        owners.push(tx.origin);
        ownerCount++;
    }
}
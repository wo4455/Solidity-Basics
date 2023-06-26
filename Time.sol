pragma solidity ^0.8.0;

contract Time {
    string public name;
    uint openingTime = 1687748836; // epoch time 

    modifier onlyWhileOpen {
        require(block.timestamp >= openingTime, 'please wait until opening time');
        _;
        // block.timestamp is when [in time] the contract is happening
    }

    function changeName(string memory _name) public onlyWhileOpen {
        name = _name;
    }
}

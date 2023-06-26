pragma solidity ^0.8.0;

contract Modifiers {
    string public name;
    address owner;

    modifier onlyOwner {
        require(msg.sender == owner, 'caller must be owner');
        _;
    }

    function setName(string memory _name) public onlyOwner {
        name = _name;
    } 
}

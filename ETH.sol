pragma solidity ^0.8.0;

contract ETH {
    mapping(address => uint) public balances;
    address payable wallet; // payable explicitly says that wallet accepts ether

    event Purchase(address indexed _buyer, uint _amount); // indexed lets you filter based on certain buyers

    constructor(address payable _wallet) {
        wallet = _wallet;
    }

    function buyToken() public payable {
        // increment balance 
        balances[msg.sender] += msg.value; // msg.value is the amount of ether being sent in this transaction

        // send ether to wallet
        wallet.transfer(msg.value);

        // trigger purchase event
        emit Purchase(msg.sender, msg.value);
    }
}

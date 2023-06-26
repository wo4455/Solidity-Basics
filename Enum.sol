pragma solidity ^0.8.0;

contract Enum {
    enum State { Waiting, Ready, Active }
    State public state;

    constructor() {
        state = State.Waiting;
    }

    function activate() public {
        state = State.Active;
    }
}

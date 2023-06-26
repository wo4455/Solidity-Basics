pragma solidity ^0.8.0;

contract Mapping {
    uint public peopleCount = 0; // must include counter, bc no way to know length of mapping
    mapping(uint => Person) public people;

    struct Person {
        uint _id;
        string _firstname;
        string _lastname;
    }

    function addPerson(string memory _firstname, string memory _lastname) public {
        people[peopleCount] = Person(peopleCount, _firstname, _lastname);
        peopleCount++;
    }
}

pragma solidity ^0.8.0;

contract myContract {
    string public name = "hello";
    Person[] public people;
    

    constructor(string memory _name) {
        name = _name;
    }

    function getName() public view returns(string memory) {
        return name;
    }

    //Structs: creating own variable/object with properties
    struct Person {
        string _firstname;
        string _lastname;
    }

    // Arrays - like normal
    function addPerson(string memory _firstname, string memory _lastname) public {
        people.push(Person(_firstname, _lastname));
    }

}

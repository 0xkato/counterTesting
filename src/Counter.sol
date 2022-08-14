// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {

    uint public number;
    string public name;

    // initiate contract with a name and a starting number
    constructor(string memory _name, uint _initialNumber) {
        name = _name;
        number = _initialNumber;
    }

    // Sets the change the number of the count
    function changeNumber(uint newNumber) public {
        number = newNumber;
    }

    //change the name of the name variable
    function changeName(string memory newName) public {
        name = newName;
    }

    // increment the count by 1 everytime its called
    function increment() public returns (uint) {
        number++;
        return number;
    }

    // decrement the count by 1 everytime its called if number is > then 0
    function decrement() public returns (uint) {
        if (number > 0) {
        number--;
        }
        return number;
    }

    // resets the count everytime its called and makes the number go to 0
    function  resetCount() public returns (uint newCount) {
        number = 0;
        return number;
    }
}
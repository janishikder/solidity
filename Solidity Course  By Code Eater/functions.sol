// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.5.0 < 0.9.0; 

contract local{
    uint public age = 10; 
    uint public count;

    //constructor 
    constructor(uint new_count){
        count = new_count; 
    }
    function setter( uint newAge) public {
        age = newAge; 
    }
    function getValue() public pure returns(uint){
        uint roll = 100; 
        return roll; 
    }



}
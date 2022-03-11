// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0; 

//struct can create outside of contract too

struct Student{
    uint roll; 
    string name; 
}

contract Demo{
    Student public s1; 
    Student public s2 = Student({
        roll: 1, 
        name: "Jani"
    });

    constructor(uint roll, string memory name){
         s1.roll = roll; 
         s1.name = name; 
    }
    
    function change(uint roll, string memory name) public {
        Student memory new_student = Student({
            roll : roll,
            name: name
        }); 

        s1 = new_student; 
    }
}
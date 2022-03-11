 // SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0; 
contract Demo{
    mapping(uint=>string) public roll_no; 
    function setter(uint keys, string memory value) public
    {
        roll_no[keys]=value; 
    }
    //mapping with structure
    struct Student{
        string name; 
        uint class; 
    }
    mapping(uint=>Student) public data; 
    function setterStudentData(uint roll, uint class, string memory name) public {
        data[roll]= Student({
            class: class, 
            name: name
        }); 
    }
}
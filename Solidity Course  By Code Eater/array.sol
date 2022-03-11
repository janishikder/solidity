// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0; 

contract Array {
uint[4] public arr= [10,20,30,50]; 
 uint[] public arr1; 
//byte array
 bytes3 public b3; 
 bytes2 public b2; 

bytes public b1="abc"; 

function pushElementB1() public {
    b1.push("d"); 
}
function getElementB1(uint i) public view returns(bytes1){
    return b1[i]; 
}

function getLengthOfB1() public view returns(uint){
    return b1.length; 
}

 function setterBytes() public{
   b3="abc"; 
   b2="ab"; 
 }

 function setter(uint index, uint value) public {
     arr[index] = value; 
 }
 function lengthArr() public view returns(uint){
     return arr.length; 
 }
 function pushElement(uint item) public {
     arr1.push(item);
 }
 function popElement() public{
    arr1.pop(); 
 }
}

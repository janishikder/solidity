 // SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.5.0 < 0.9.0; 

contract A{ 
    function f1() public pure returns(uint){
        return 1; 
    }
    function f2() private pure returns(uint){
        return 2; 
    }
    function f3() internal pure returns(uint){
        uint x = f2(); 
        return x; 
    }
    function f4() external pure returns(uint){
        return 4; 
    }
}

// contract B is A {
//     uint public bx = f3(); 
// }

contract C {
    A obj= new A(); 
    uint public cx = obj.f1(); 
}
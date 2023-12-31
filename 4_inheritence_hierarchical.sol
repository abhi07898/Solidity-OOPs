// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
/*
In hierarchical inheritance, the base contract has over one derived contract. This inheritance is useful when one common functionality is used in multiple places
*/

contract A {  
    function getAValue() external pure returns(string memory){  
        return "contract A is called";  
    }  
} contract B is A {  
      
} contract C is A {  
      
}     
contract caller {        
    B contractB = new B();  
    C contractC = new C();   
      
    function testInheritance() public view returns (string memory, string memory) {  
        return (contractB.getAValue(), contractC.getAValue());  
    }  
}  
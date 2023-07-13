// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
/*
Unlike C# and Java, Solidity supports multiple-inheritance. 
The single contract can be inherited from more than one contract.
*/


contract A {  
  
    uint internal a;  
  
    function getA(uint _value) external {  
        a = _value;  
    }  
}  
  
contract B {  
  
    uint internal b;  
  
    function getB(uint _value) external{  
        b = _value;  
    }  
}  
  
contract C is A, B {  
  
    function getValueOfSum() external view returns(uint) {  
        return a + b;  
    }  
}  
  
contract caller {  
  
    C contractC = new C();  
  
    function testInheritance() public returns(uint) {  
        contractC.getA(10);  
        contractC.getB(20);  
        return contractC.getValueOfSum();  
    }  
}
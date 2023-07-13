// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
/*
Single or single-level inheritance helps to use variables and functions of the base contract to the derived contract. 
*/
contract parent{  
      
    uint internal id;  
      
    function setValue(uint _value) external {  
        id = _value;  
    }  
}  
  
contract child is parent{  
      
    function getValue() external view returns(uint) {  
        return id;  
    }  
}  
// a another contract that call hte derived contract   
contract caller {  
    child cc = new child();   
      
    function testInheritance(uint _input) public returns (uint) {  
        cc.setValue(_input);  
        return cc.getValue();  
    } 

     function getValue() external view returns(uint) {  
        return cc.getValue();  
    }  
}  

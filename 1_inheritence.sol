// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/*
Inheritance is a way to extend functionality of a contract. 
Solidity supports both single as well as multiple inheritance
*/
contract parent{  
    uint internal id;  
    function setValue(uint _value) public{  
        id = _value;  
    }  
}  
contract child is parent{    
    function getValue() public view returns(uint){  
        return id;  
    }  
}  
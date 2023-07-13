// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
/*
Multi-level inheritance is similar to the single level, but the difference is, it has levels of parent-child relationships.

public - all can access

external - Cannot be accessed internally, only externally

internal - only this contract and contracts deriving from it can access

private - can be accessed only from this contract

*/

contract A {  
    function getAValue() external pure returns(string memory){  
        return "contract A is called";  
    }  
}  
  
contract B is A {  
      
    function getBValue() external pure returns(string memory){  
        return "contract B is called";  
    }  
}  
  
contract C is B {  
      
    function getCValue() external pure returns(string memory){  
        return "contract C is called";  
    }  
}  
  
  
contract caller {  
  
    C contractC = new C();   
      
    function testInheritance() public view returns (string memory, string memory, string memory) {  
        return (contractC.getAValue(), contractC.getBValue(), contractC.getCValue());  
    }  
}  

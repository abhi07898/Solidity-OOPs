// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
/*
It refers to the mechanism of manipulation of the scope of variables, i.e. it restricts the access of the variable outside the scope. 
It allows enough constraint access to a method for taking action on it.

Public: These objects can be accessed internally and externally as well as via messages also. Public elements can be inherited by external methods. A getter function is generated automatically when a public variable is created.
Internal: As the name suggests, Internal objects can be accessed by internal methods or by derived methods but cannot be accessed by external ones. Only a base contract and a derived contract has its access.
Private: Private objects can only be accessed internally from the current contract instances. They cannot be accessed by derived methods also.
External: These objects can be accessed externally but not internally i.e. current contract instances cannot access it. They cannot be inherited.
*/


contract parent {
    uint public num = 30;
    uint internal internal_num= 10;

    function sqrt() external returns (uint) {
        internal_num = internal_num ** 2;
        return internal_num;
    }

}

contract Caller {
    child c = new child();
    function f() public returns (uint) {
        return c.sqrt();
    }
    function f2() public returns(uint, uint){
        return (c.increment(), c.add());
    }
}

contract child is parent {
    function increment() public payable returns (uint) {
        num = num + 20;
        return num;
    }
    function add() public pure returns(
        uint){
        uint a = 10;
        uint b = 20;
        uint sum = a + b;
        return sum;
    }
}


// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
/*
Abstract contracts are contracts that have at least one function without its 
implementation or in the case when you don’t provide arguments for all of the 
base contract constructors
*/

pragma solidity ^0.8.17;

abstract contract AbstractContract {
	function getStr(string memory _strIn) public view virtual returns(string memory);
	function setValue(uint _in1, uint _in2) public virtual;
	function add() public virtual returns(uint);
}

// child contract 'DerivedContract' inheriting an abstract parent contract 'AbstractContract'
contract DerivedContract is AbstractContract{
	uint private num1;
	uint private num2;
	// Defining functions inherited from abstract parent contract
	function getStr(string memory _strIn) public pure override returns(string memory){
		return _strIn;
	}
	
	function setValue(uint _in1, uint _in2) public override{
		num1 = _in1;
		num2 = _in2;
	}
	function add() public view override returns(uint){
		return (num2 + num1);
	}
}

// Caller contract
contract Call{
	// Creating an instance of an abstract contract
	AbstractContract abs;
	// Creating an object of child contract
	constructor(){
		abs = new DerivedContract();
	}
	// Calling functions inherited from abstract contract
	function getValues() public returns (string memory,uint){
		abs.setValue(10, 16);
		return (abs.getStr("GeeksForGeeks"),abs.add());
	}
}

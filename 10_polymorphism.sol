// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;
/*
Polymorphism is the ability to process data in more than one form.There are the following two types of polymorphism:
1. Function polymorphism
2. Contract polymorphism

url - https://medium.com/coinmonks/solidity-and-object-oriented-programming-oop-191f8deb8316 
*/
contract helloFunctionPloymorphism {
 function getVariableData(int8 data) public pure returns(int8 output) {
 return data;
 }
function getVariableData(int16 data) public pure returns(int16 output) {
 return data;
 }
}

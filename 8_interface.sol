//SPDX-License-Identifier: MIT
pragma solidity ^0.8.11;

interface ICountry {
    function greetings() external pure returns (string memory);
    function greetings(string memory _name) external pure returns (string memory);
}
contract UnitedKingdom is ICountry {
    function greetings() external pure returns (string memory) {
        return "hello";
    }
    function greetings(string memory _name) external pure returns (string memory) 
    {
        return string(abi.encodePacked("hello ", _name));
    }
}
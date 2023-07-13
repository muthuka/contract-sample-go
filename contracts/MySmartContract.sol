// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.22 <0.9.0;

contract MySmartContract {
    string constant public name = "MySmartContract";
    string constant public symbol = "MSC";

    function Hello() public pure returns (string memory) {
        return "Hello World";
    }

    function Greet(string memory str) public pure returns (string memory) {
        return str;
    }
}
// SPDX-License-Identifier: MIT
pragma solidity ^0.6.12;
pragma experimental ABIEncoderV2;

contract Example {
    struct Struct {
        uint256 num;
    }

    function f1(uint256 num) public pure returns (uint256) {
        return num;
    }

    function f2(Struct memory s) public pure returns (uint256) {
        return s.num;
    }

    function f3(Struct memory s) public pure returns (Struct memory) {
        return s;
    }
}

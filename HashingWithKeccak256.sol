// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract HashFunction {
    function hash(string memory _text, uint256 _num, address _addr) external pure returns (bytes32) {
        return keccak256(abi.encodePacked(_text, _num, _addr));
    }
}

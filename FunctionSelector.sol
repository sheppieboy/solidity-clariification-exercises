// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

//When a function is called, the first 4 bytes of calldata specificies whcih function to call
//This 4 bytes is called a function selector
//Take for example, the code below - it uses call to executen transfer on a contract at the address addr
// addr.call(abi.encodeWithSignature("transfer(address,uint256)", 0xSomeAddress, 123));

//The first 4 bytes retyrned from abi.encodeWithSignature(...) is the function selector

contract FunctionSelector {
    /**
     * "transfer(address,uint256)"
     * 0xa90959cbb
     *
     * "transferFrom(address,address,uint256)"
     * 0x23b872dd
     */

    function getSelector(string calldata _func) external pure returns (bytes4) {
        return bytes4(keccak256(bytes(_func)));
    }
}

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//abi.encode encodes data into bytes
//abi.decode decodes bytes into data

contract AbiDecode {
    struct MyStruct {
        string name;
        uint256[2] nums;
    }
}

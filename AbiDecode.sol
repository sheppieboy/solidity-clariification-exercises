// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

//abi.encode encodes data into bytes
//abi.decode decodes bytes into data

contract AbiDecode {
    struct MyStruct {
        string name;
        uint256[2] nums;
    }

    function encode(uint256 x, address addr, uint256[] calldata arr, MyStruct calldata myStruct)
        external
        pure
        returns (bytes memory)
    {
        return abi.encode(x, addr, arr, myStruct);
    }
}

// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

import "../ERC725/IERC725Y.sol";

contract ERC725YWriter {

    function CallSetData(address to, bytes32[] calldata _keys, bytes[] calldata _values)
        public
    {
        IERC725Y(to).setData(_keys, _values);
    }

    function setComputedData(address to) public {
        
        // create the key
        bytes32[] memory _keys = new bytes32[](1);
        _keys[0] = keccak256(abi.encodePacked("MyFirstKey"));
        
        // create the value
        bytes[] memory _values = new bytes[](1);
        _values[0] = abi.encode("Hello Lukso!");

        IERC725Y(to).setData(_keys, _values);
    }

}
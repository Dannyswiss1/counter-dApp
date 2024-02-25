// SPDX-License-Identifier: MIT
 pragma solidity ^0.8.9;


contract CounterdApp {

    uint256 public count;

    function setCount(uint256 _newCount) public {
        
        require(_newCount != 0, "Input value must not be zero");

        count = _newCount;
    }

    function incrementCount(uint256 _amount) public {

        uint oldCount = count;

        count += _amount;

        assert(count >= oldCount);
    }

    function decrementValue(uint256 _amount) public {

        if (_amount > count) {
            revert("Decrement amount exceeds current value");
        }

        count -= _amount;
    }
}

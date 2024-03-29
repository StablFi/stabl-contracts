// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface IBribe {
    function notifyRewardAmount(address token, uint amount) external;
}

// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    mapping (address=>uint) public waving;

    constructor() {
        console.log("Yo yo, I am a contract and I am smart");
    }

    function whoWaves() public returns (uint){
        console.log("I am being called");
        console.log(totalWaves);
        return waving[msg.sender] = totalWaves;
    }

    function wave() public{
        totalWaves += 1;
        console.log("%s has waved!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256){
        console.log("We have %d total waves!", totalWaves);
        return totalWaves;
    }
}
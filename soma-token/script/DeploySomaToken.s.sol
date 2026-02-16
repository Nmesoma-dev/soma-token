//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/SomaToken.sol";

contract DeploySomaToken is Script {
    function run() external {
        vm.startBroadcast();
        new SomaToken(
            "Soma Token",
            "SOM",
            1_000_000
        );
        vm.stopBroadcast();
    }
}
//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {Secret} from "../src/Secret.sol";
import {Setup} from "../src/Setup.sol";

contract CounterScript is Script {

    function setUp() public {}

    function run() public {
        uint pkey = vm.envUint("PRIVKEY");
        string memory rpcUrl = vm.envString("RPC_URL");
        address setupAddr = vm.envAddress("SETUP");

        vm.createSelectFork(rpcUrl);
        vm.startBroadcast(pkey);

        Setup setup = Setup(setupAddr);
        address secretAddr = address(setup.challenge());

        console.log(secretAddr);
        Secret secret = Secret(secretAddr);

        string memory referrer = secret.ReferedBy();
        console.log(referrer);

        string memory secretcode = 'Can i join COMPFEST 17? Here is my secret number: 198514';
        secret.guess{value: 0.5 ether}(secretcode, referrer);

        require(setup.isSolved(), "not solved");
        vm.stopBroadcast();
    }
}

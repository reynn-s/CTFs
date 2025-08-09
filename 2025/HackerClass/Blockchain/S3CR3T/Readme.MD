I used Forge as the tool to solve this CTF puzzle.

First, I initiated forge in the S3CR3T directory and then created the .env file from the given values.
Then I used ```source .env``` so that I could test the connection using:
```
cast call $SETUP "challenge()(address)" --rpc-url $RPC_URL
```

exporting the output
```
export CHALL="0x4F13C75a208BF84B95eC8C04983c16C89F6883f7"
```

Then I put the ```Setup.sol``` and ```Secret.sol``` files in the src directory. 
After that, I edited the script at `Counter.s.sol` in the script directory.

Based on the given value from the CompFest website, the PRIVKEY didn't have the ```0x``` prefix, so I added it.

After that, i compiled it:

```forge script script/Counter.s.sol:CounterScript --broadcast```

After compiling, I checked the flag on the website, which was:

```COMPFEST17{finally_COMPFEST17_Y3333333AYYYY!_32e0debeb1}```

![S3CR3T FLAG](https://github.com/reynn-s/CTFs/blob/main/2025/HackerClass/Blockchain/S3CR3T/BlockchainFlag.jpg)

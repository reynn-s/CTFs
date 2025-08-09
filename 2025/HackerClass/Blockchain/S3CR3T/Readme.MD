I use Forge as the tool to solve this CTF Puzzle

First, i initiate the forge in the S3CR3T directory and then create the .env from the given value.
then i use ```source .env``` so that i can test the connection using:
'''
cast call $SETUP "challenge()(address)" --rpc-url $RPC_URL
'''

exporting the output
```
export CHALL="0x4F13C75a208BF84B95eC8C04983c16C89F6883f7"
```

and then putting the ```Setup.sol``` and ```Secret.sol``` in the src directory 
after that editing the script at ```Counter.s.sol``` on the script directory

based on the given value from the compfest website the PRIVKEY doesnt have the ```0x``` so i add it

after that compile

```forge script script/Counter.s.sol:CounterScript --broadcast```

after compile check the flag at the website which is:

```COMPFEST17{finally_COMPFEST17_Y3333333AYYYY!_32e0debeb1}```

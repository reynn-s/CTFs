I use Forge as the tool to solve this CTF Puzzle

First, i initiate the forge in the S3CR3T directory and then create the .env from the given value.
then i test the connection using:
'''
cast call $SETUP "challenge()(address)" --rpc-url $RPC_URL
'''

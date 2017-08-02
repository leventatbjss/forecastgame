# Forecast Game
That is a simple game to demonstrate a smart contract in action.
Every day at 17:00 the game will checkpoint. At each checkpoint it will take a snapshot of the Ethereum price against GBP and will compare it against the previous checkpoint. It will then have a notion of a "rise" or "fall".
After each checkpoint the contract will accept bets until 16:00. Punters may lay any amount of Ethers into either "up" or "down". Once the checkpoint is reached the contract will distribute the ethers of losers to winners in proportion to the their bets less the commission for the bookkeeper.

This will demonstrate the following:
* A contract collecting cash in Ethers and keeping it for a period.
* A pseudo-anonymous betting environment. Players and the bookkeeper can trust each other without necessarily knowing them.
* Use of an oracle service to bring external data in.

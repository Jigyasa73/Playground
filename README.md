# Project Title
The provided Solidity code defines a smart contract called "PlayGround" that represents a simple token-based game ecosystem.  This token is intended to be used as a digital asset for in-game transactions and interactions.

## Description
Players can earn, spend, and transfer gameCoin tokens to engage in various gaming activities. The contract ensures secure token management by allowing minting (creation) and burning (destruction) of tokens while adhering to predefined rules. Additionally, the contract enables players to use gameCoin tokens to participate in the game, creating an integrated token economy that enhances the gaming experience. Through this contract, blockchain technology is leveraged to tokenize interactions within the gaming environment, fostering a dynamic and secure virtual economy for players.

# Getting Started
# Executing the program
1. Deployment:
The Solidity code is compiled with a compatible compiler version (0.8.18). After compiling, the contract is deployed to the Ethereum blockchain using a wallet or a development environment like Remix. During deployment, the constructor function is executed, initializing the contract's state variables. This sets the initial token properties, total supply, and balances for the deployer's address.

2. Token Transfer:
Users can initiate token transfers by calling the transfer function and providing a recipient address and a value to transfer. The function checks for valid inputs, sufficient balance, and proper execution. If all conditions are met, the transfer occurs, updating the balances and emitting a Transfer event.

3. Token Minting:
The mint function allows new tokens to be created. Users can call this function, specifying a recipient address and the amount of tokens to mint. The function checks if the value is valid and whether the total supply limit is reached. If both conditions are satisfied, new tokens are minted, increasing the total supply and the recipient's balance. Events are emitted to log the minting and transfer actions.

4. Token Burning:
To destroy tokens, users call the burn function and provide the amount of tokens to burn. The function validates the input and the user's balance. If the conditions are met, tokens are destroyed, decreasing both the total supply and the user's balance. Events are emitted to record the burning and transfer actions.

5. Game Participation:
Players can participate in the game using the playGame function. The function checks if the player is allowed to play and has sufficient tokens to cover the game cost. If these criteria are fulfilled, the game cost is deducted from the player's balance, and the game logic is simulated (not explicitly defined in the provided code). A Transfer event is emitted to capture the token transfer for the game cost.

# Authors 
Jigyasha Sharma

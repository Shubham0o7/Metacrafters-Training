# Project Title

Create ERC-20 Token Contract

## Description

ERC_Token is a simple ERC20 token contract written in Solidity. It extends the OpenZeppelin ERC20 implementation to create a custom token using npx hardhat network. The contract includes additional functionality for minting and burning tokens, along with a modified transfer function.

## Getting Started

### Prerequisities

To deploy and interact with this contract, you will need:

* A development environment such as Remix or Truffle.
* Access to an Ethereum network (local or testnet) to deploy the contract.
* The OpenZeppelin library installed.

### Contract Features

* `Minting Tokens`: Only the contract owner can mint new tokens. The mint() function uses two parametrs, i.e, the recipient's address and the amount of tokens to be minted.

* `Transferring Tokens`: The transfer() function, as the name suggests, is used to transfer tokens from your address to another address. It uses two paramters, i.e, the recipient's address and the amount of tokens to transfer.

* `Burning Tokens`: The burn() function is used to destroy tokens from your address.

### Contract Functions

* `mint()`: Mint new tokens and assign them to the specified account. Only the contract owner can use this function.
```
function mint(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }
```

* `transfer`: Transfer tokens to the specified receiver. This function includes a balance check to ensure the sender has enough tokens.
```
function transfer(address reciever, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, reciever, amount);
        require(balanceOf(msg.sender) >= amount, "Insufficient balance");
        return true;
```

* `burn`: Burn a specific amount of tokens owned by the sender. This reduces the sender's token balance.
```
function burn(uint256 amount) external {
        _burn(msg.sender, amount);
```

### Implementation

1. Open your preferred Solidity development environment (e.g., Remix).
2. Create a new Solidity file or import ERC-20 Token.sol file.
3. Make sure you have the OpenZeppelin library imported correctly.
4. Compile the contract using the Solidity compiler.
5. Deploy the contract to your desired Ethereum network, ensuring that you have sufficient funds to cover deployment costs.
6. Take note of the deployed contract's address for future interactions.

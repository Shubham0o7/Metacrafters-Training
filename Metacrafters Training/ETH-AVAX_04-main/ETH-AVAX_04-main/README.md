# Project Title

Create Degen Token Contract

## Description

Degen Token (DGN) is an innovative ERC-20 token that reimagines the way users interact with virtual assets in the gaming and collecting world. Our smart contract facilitates secure, transparent, and efficient transactions, enabling users to buy, sell, and trade virtual items directly in a peer-to-peer marketplace.

## Getting Started

### Prerequisities

To deploy and interact with this contract, you will need:

* Development environment such as Remix or Truffle.
* Access to an Ethereum network (local or testnet) to deploy the contract.
* OpenZeppelin library installed.
* Metamask account created.

### Contract Features

* `Minting Tokens`: Only the contract owner can mint new tokens. The mint() function uses two parametrs, i.e, the recipient's address and the amount of tokens to be minted.

* `Transferring Tokens`: The transfer() function, as the name suggests, is used to transfer tokens from your address to another address. It uses two paramters, i.e, the recipient's address and the amount of tokens to transfer.

* `Burning Tokens`: The burn() function is used to destroy tokens from your address.

* `Custom Item Redemption`: Users can redeem specific items by providing an item number, subject to certain balance requirements.

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

* `reedem`: Users can redeem specific items using the select_item function, which internally calls the redeem function. The items available for redemption are:
Item 101: Grossmutant (Cost: 100 tokens)
Item 102: Deadmutant (Cost: 500 tokens)
Item 103: Decayman (Cost: 900 tokens)
```
 function select_item(uint256 item_num) external payable {
        redeem(item_num);
        }

    function redeem(uint256 item_num) public payable {
        require(item_num >= 101 && item_num <= 103, "Invalid item number");

        if (item_num == 101) {
            require(balanceOf(msg.sender) >= 100,"Insufficient balance for Grossmutant");
            _transfer(msg.sender, minter, 100);
            console.log("Grossmutant transfered to your account");
        } 
        else if (item_num == 102) {
            require(
                balanceOf(msg.sender) >= 500,"Insufficient balance for Deadmutant");
            _transfer(msg.sender, minter, 500);
            console.log("Deadmutant transfered to your account");

           
        } else if (item_num == 103) {
            require(
                balanceOf(msg.sender) >= 900,"Insufficient balance for Decayman");
            
            _transfer(msg.sender , minter, 900);
            console.log("Decayman transfered to your account");

            
        }

        
    }
```
### Implementation

1. Open your preferred Solidity development environment (e.g., Remix).
2. Create a new Solidity file or import Degen Token.sol file.
3. Make sure you have the OpenZeppelin library imported correctly.
4. Compile the contract using the Solidity compiler.
5. Deploy the contract to your metamask account, ensuring that you have sufficient funds to cover deployment costs.
6. Take note of the deployed contract's address for future interactions.

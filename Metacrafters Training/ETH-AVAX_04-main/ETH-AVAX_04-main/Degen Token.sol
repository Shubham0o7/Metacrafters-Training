// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20, Ownable {
    address private _owner;
    address  public minter = 0x6B212E23D72134FC287BCC635977c78710aD7c5F; 
    string public rewards = "101 --> Grossmutant : 100, 102 --> Deadmutant  :  500, 103 --> Decayman :  900";
    constructor() ERC20("PLETHORA", "PL") {
        _owner = msg.sender;
    }

    function mint(address account, uint256 amount) public onlyOwner {
        _mint(account, amount);
    }
    
    function burn(uint256 amount) public{
        _burn(msg.sender, amount);
    }

    function transfer(address receiver, uint256 amount) public override returns (bool) {
        require(amount <= balanceOf(msg.sender), "Insufficient balance");
        _transfer(_owner, receiver, amount);
        return true;
    }

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
  
}

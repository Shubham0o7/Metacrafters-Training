// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Assessment {
    address[] public owners;
    uint256 public balance;
    bool public paused;

    event Deposit(address indexed depositor, uint256 amount);
    event Withdraw(address indexed withdrawer, uint256 amount);
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);
    event PausedStatusChanged(bool indexed paused);

    modifier onlyOwner() {
        bool isOwner = false;
        for (uint256 i = 0; i < owners.length; i++) {
            if (msg.sender == owners[i]) {
                isOwner = true;
                break;
            }
        }
        require(isOwner, "You are not an owner of this account");
        _;
    }

    modifier whenNotPaused() {
        require(!paused, "Contract is paused");
        _;
    }

    constructor(address[] memory _initialOwners, uint256 initialBalance) payable {
        require(_initialOwners.length > 0, "At least one owner is required");
        owners = _initialOwners;
        balance = initialBalance;
    }

    function getBalance() external view returns (uint256) {
        return balance;
    }

    function deposit() external payable whenNotPaused {
        require(msg.value > 0, "Amount must be greater than 0");

        balance += msg.value;

        emit Deposit(msg.sender, msg.value);
    }

    function withdraw(uint256 _withdrawAmount) external onlyOwner whenNotPaused {
        require(balance >= _withdrawAmount, "Insufficient balance");

        balance -= _withdrawAmount;
        payable(msg.sender).transfer(_withdrawAmount);

        emit Withdraw(msg.sender, _withdrawAmount);
    }

    function transferOwnership(address[] calldata _newOwners) external onlyOwner {
        require(_newOwners.length > 0, "At least one new owner is required");
        owners = _newOwners;

        emit OwnershipTransferred(msg.sender, _newOwners[0]);
    }

    function togglePaused() external onlyOwner {
        paused = !paused;

        emit PausedStatusChanged(paused);
    }
}

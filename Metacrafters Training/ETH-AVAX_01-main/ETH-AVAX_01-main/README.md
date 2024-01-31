# Project Title

Error Handling in Solidity Smart Contract

## Description

This smart contract is an example of a contribution-based contest implemented on the Ethereum blockchain. Participants can contribute to the contest, and the contract keeps track of the total number of contributors. The contract enforces a limit on the number of contributors and prevents duplicate contributions.

## Getting Started

### Prerequisites

To deploy and interact with the Contest smart contract, ensure you have the following:

* Solidity compiler version 0.8.0 or compatible.
* An Ethereum development environment such as Remix or Truffle.

### Contract Features

* `Contributor Tracking`: The smart contract keeps track of contributors to prevent duplicate contributions from the same address.
* `Contribution Limit`: The contract enforces a maximum limit of 100 contributors to maintain the integrity of the contest.
* `Total Contributors Count`: The contract maintains a count of the total number of contributors.
* `Preventing Duplicate Contributions`: The contract ensures that an address can contribute only once, preventing the same participant from making multiple contributions.
* `Limiting Contributors`: If the total number of contributors reaches 100, the contract prevents further contributions, maintaining the fairness of the contest.

### Contract Functions

* `assert()`: The assert() function is used for internal consistency checks. It is typically used to validate conditions that should never be false under any circumstances.
```
assert(totalContributors <= 100); // Ensure that the total number of contributors does not exceed the limit
```

* `revert()`: The revert() function is used to revert the current transaction and return a specified error message. It is often used to explicitly handle exceptional conditions or invalid inputs without throwing an error or causing unnecessary gas consumption.
```
revert("Contributors limit exceeded"); // Revert the transaction if the contributors limit is exceeded
```

* `require()`: The require() function is commonly used to validate inputs, preconditions, and user-provided data before proceeding with the contract's execution.
```
require(!hasContributed[msg.sender], "Already Contributed"); // Check if the address has already contributed
```

### Implementation

1. Open the Solidity compiler of your choice.
2. Create a new file or import the Error_Handling.sol file.
3. Compile the contract using the Solidity compiler.
4. Deploy the contract to your desired Ethereum network or local blockchain.
5. Interact with the contract by calling the contributed() function.



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Erro_Handling {
    uint public totalContributors;
    mapping(address => bool) public hasContributed;

    function contributed() public {
        require(!hasContributed[msg.sender], "Already Contributed"); // Check if the address has already contributed

        totalContributors++;
        hasContributed[msg.sender] = true;

        if (totalContributors > 100) {
            revert("Contributors limit exceeded"); // Revert the transaction if the contributors limit is exceeded
        }

        assert(totalContributors <= 100); // Ensure that the total number of contributors does not exceed the limit
    }
}

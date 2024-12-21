// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DecentralizedSchoolGovernance {
    mapping(address => uint256) public votingPower;
    mapping(string => uint256) public proposals;

    function propose(string memory proposal) public {
        proposals[proposal] = 0;
    }

    function vote(string memory proposal) public {
        require(votingPower[msg.sender] > 0, "No voting power");
        proposals[proposal] += votingPower[msg.sender];
    }
}

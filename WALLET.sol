//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract AccessWallet {

    address public admin;

    mapping(address=>uint256) public balances;
    mapping(address=>bool) public allowedUser;

    modifier onlyAdmin {
        if(msg.sender!=admin) {
            revert("Not admin.");
        }
        _;
    }

    modifier userAllowed {
        require(allowedUser[msg.sender],"You are not allowed to participate.");
        _;
    }

    constructor () {
        admin = msg.sender;
    }

    function allowUser(address _user) external onlyAdmin {
        allowedUser[_user]=true;
    }

    function deposit() public payable userAllowed {
        require(msg.value > 0, "Deposit amount must be greater than 0");
        balances[msg.sender]+=msg.value;
    }

    function withdraw(uint256 amount) public userAllowed{
        require(amount > 0, "Withdrawal amount must be greater than 0");
        assert(balances[msg.sender] >= amount);
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }


} 
# AccessWallet

## Overview

**AccessWallet** is a Solidity smart contract designed to control access to deposit and withdraw funds. It features administrative control to manage permissions for allowed users, ensuring that only authorized individuals can interact with the contract.

## Description

The **AccessWallet** contract manages user balances and permissions using Solidity's mappings. The contract has an administrator who can grant access to specific users. Authorized users can deposit Ether into their balance and withdraw Ether, provided they have sufficient funds.

## Getting Started

### Deploying the Contract

#### Setup

1. **Environment Setup**: Use Remix or another Solidity development environment.
2. **Create Contract File**: Save the contract code in a file named `AccessWallet.sol`.

#### Compiling and Deploying

1. **Compile the Contract**: Ensure the Solidity compiler version is set to `0.8.20`.
2. **Deploy the Contract**: Deploy the contract on your preferred Ethereum network (e.g., Rinkeby, Goerli).

## Interacting with the Contract

Once deployed, you can interact with the contract using Ethereum wallets or scripting:

- **Allow User**: Only the contract admin can allow users to interact with the contract via the `allowUser` function.
  
  Example: `allowUser("0xUserAddress")`

- **Deposit Funds**: Allowed users can deposit Ether into their balance using the `deposit` function.
  
  Example: Send Ether to the contract address with sufficient gas.

- **Withdraw Funds**: Allowed users can withdraw Ether from their balance using the `withdraw` function.
  
  Example: `withdraw(100)` to withdraw 100 Wei.

## Help

### Common Issues

- **Permission Errors**: Ensure users are authorized via the `allowUser` function before attempting to deposit or withdraw.

### Additional Resources

For assistance or more detailed information, refer to the Solidity documentation or other Ethereum development resources.

## Authors

- **PARMANAND**

## License

This project is licensed under the MIT License.

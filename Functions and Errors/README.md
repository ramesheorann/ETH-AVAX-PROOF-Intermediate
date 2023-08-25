
# Metacrafters Project 

This repository contains the source code for the `myContract_for_errorHandling` smart contract. The contract is written in Solidity version 0.8.0 and implements the require(), assert() and revert() statements, along with the `getContractBalance` function.


## Getting Started

Follow the steps below to get started with the `myContract_for_errorHandling` smart contract:

1. Clone this repository to your local machine.
2. Open the project in your preferred Ethereum development environment.
3. Compile the smart contract using the Solidity compiler.
4. Deploy the contract to your preferred Ethereum network.
5. Interact with the contract using the provided functions.

## Contract Details

### Description

The `myContract_for_errorHandling` contract allows the contract owner to withdraw/add funds from the contract balance. The contract owner is set during the contract deployment.

### Functions

#### `constructor()`

The constructor function is executed once during contract deployment. It sets the contract owner to the address of the message sender.

#### `withdraw_amount(uint amount)`

The `withdraw_amount` function allows the contract owner to withdraw a specified amount of funds from the contract balance. It includes checks using assert statements to ensure the withdrawal conditions are met:
- The contract balance must be equal to or greater than the requested amount.

#### `add_amount(uint amount)`

The `add_amount` function allows the contract owner to add a specified amount of funds to the contract balance. It includes checks using require statements to ensure the addition conditions are met:
- The amount must be greater than zero.


#### `getContractBalance()`

The `getContractBalance` function is a view function that returns the current balance of the contract.

## Usage

To use the `myContract_for_errorHandling` smart contract, follow these steps:

1. Deploy the contract by calling the constructor function.
2. As the contract owner, call the `withdraw_amount` function and provide the amount to withdraw.
3. Verify that the withdrawal conditions are satisfied and the transfer is successful.
4. To check the current balance of the contract, call the `getContractBalance` function.

## License

This project is licensed under the MIT License. See the [LICENCE](https://github.com/sonusheorann/ETH-AVAX-PROOF-Intermediate/blob/56948c635b9ad77dbf5335789ff257a7c88e4dca/Functions%20and%20Errors/LICENSE) file for details.

## Credits

This project is a solution to the project task provided by MetaCrafters.

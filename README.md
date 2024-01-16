# AVAX_MOD-3 Token Proxy

## Overview

 Token Proxy is a Solidity smart contract designed to facilitate the creation and deployment of your own ERC20 token using Remix. Once deployed, the contract provides essential functions for interacting with the token. The contract owner can mint tokens to a specified address, while any user has the ability to burn and transfer tokens. Token Proxy is a Solidity smart contract designed to facilitate the creation and deployment of your own ERC20 token using Remix. Once deployed, the contract provides essential functions for interacting with the token. The contract owner can mint tokens to a specified address, while any user has the ability to burn and transfer tokens.

## Usage

This project enables users to perform the following actions on the created ERC20 token:

### Requirements

- REMIX [https://remix.ethereum.org/]

### Functions

#### Mint Tokens
```solidity
// Mint Function 
    function mintTokens(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }

   
```
This function allows the contract owner to mint tokens to a specified address.

#### Burn Tokens
```solidity
 // Burn Function 
    function burnTokens(uint256 amount) external onlyOwner {
        _burn(_msgSender(), amount);
    }

   
```
This function enables the contract owner to burn tokens, reducing the total token supply.

#### Transfer Tokens
```solidity
 // Transfer Function with Check 
    function transferWithCheck(address to, uint256 amount) external {
        // Add any additional checks or conditions before transferring
        _transfer(_msgSender(), to, amount);
    }
```
Any user can utilize this function to transfer tokens to a designated address.

## Authors

AVAX_MOD-3 Token Proxy is developed by Rishkesh Jadhav AVAX_MOD-3

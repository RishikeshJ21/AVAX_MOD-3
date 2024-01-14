// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract mytoken is ERC20, Ownable {

    constructor() ERC20("Rishikesh", "RSH") Ownable(msg.sender) {
        _mint(_msgSender(), 1000 * 10 ** decimals());
    }

    // Mint Function 
    function mintTokens(address account, uint256 amount) external onlyOwner {
        _mint(account, amount);
    }

    // Burn Function 
    function burnTokens(uint256 amount) external onlyOwner {
        _burn(_msgSender(), amount);
    }

    // Transfer Function with Check 
    function transferWithCheck(address to, uint256 amount) external {
        // Add any additional checks or conditions before transferring
        _transfer(_msgSender(), to, amount);
    }
}

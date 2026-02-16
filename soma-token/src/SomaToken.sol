//SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-contracts/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "openzeppelin-contracts/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import "openzeppelin-contracts/contracts/access/Ownable.sol";

contract SomaToken is ERC20, ERC20Burnable, ERC20Pausable, Ownable {
    constructor(
        string memory name_,
        string memory symbol_,
        uint256 initialSupply
    ) ERC20(name_, symbol_) Ownable(msg.sender) {
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }
 function pause() external onlyOwner {
    _pause();
 }
 function unpause() external onlyOwner {
    _unpause();
 }
 function mint(address to, uint256 amount) external onlyOwner {
    _mint(to, amount);
 }
 function _update(
    address from,
    address to,
    uint256 value
 ) internal override(ERC20, ERC20Pausable) {
    super._update(from, to, value);
 }
}
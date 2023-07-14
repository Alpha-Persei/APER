// SPDX-License-Identifier: MIT 

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// We added Ownable to be able to transfer Ownership
contract APER is ERC20, Ownable {
    constructor() ERC20("Alpha Per", "APER") {
        // We hardcode the initial supply to avoid any types of security problems
        _mint(msg.sender, 8111817543 * 10**uint(decimals()));
    }
}

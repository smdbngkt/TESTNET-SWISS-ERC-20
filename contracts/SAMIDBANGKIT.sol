// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SAMIDBANGKIT is ERC20, Ownable {
    constructor() ERC20("SAMIDBANGKIT", "SMD") {}

    function mint100tokens() public onlyOwner {
        _mint(msg.sender, 100 * 10 ** 18);
    }

    function burn100tokens() public onlyOwner {
        _burn(msg.sender, 100 * 10 ** 18);
    }
}

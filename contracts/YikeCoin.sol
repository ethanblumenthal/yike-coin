// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract YikeCoin is ERC20 {
    constructor() ERC20("YikeCoin", "YIKE") {
        _mint(msg.sender, 1000);
    }
}
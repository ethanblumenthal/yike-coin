// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract YikeCoin is ERC20 {
    bytes32 public answer;
    uint256 public prize;

    constructor(string memory _phrase1, string memory _phrase2) ERC20("YikeCoin", "YIKE") {
        _mint(address(this), 1000 * (10 ** uint256(decimals())));
        prize = totalSupply() / 1000;
        answer = _hash(_phrase1, _phrase2);
    }

    function solve(string memory _phrase1, string memory _phrase2) public {
        // Check if hashed passphrase is correct
        require(_hash(_phrase1, _phrase2) == answer, "Invalid passphrase!");
        
        // Transfer 1/1000 of token supply to caller
        _transfer(address(this), msg.sender, prize);
    }
    
    function _hash(string memory _phrase1, string memory _phrase2) internal pure returns (bytes32) {
        return keccak256(abi.encodePacked(_phrase1, _phrase2));
    }
}
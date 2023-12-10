// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Tether is ERC20 {
    uint8 private _customDecimals;

    constructor(uint256 initialSupply, string memory name, string memory symbol, uint8 decimals)
        ERC20(name, symbol)
    {
        _mint(msg.sender, initialSupply);
        _customDecimals = decimals;
    }

    function decimals() public view override returns (uint8) {
        return _customDecimals;
    }
}

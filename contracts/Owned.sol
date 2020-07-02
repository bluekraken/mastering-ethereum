pragma solidity ^0.5.16;

contract Owned {

    address payable owner;

    // Initialise the Faucet contract
    constructor () public {
        owner = msg.sender;
    }

    // Only owner function modifier
    modifier onlyOwner {
        require(owner == msg.sender, "Only the contract owner can call this function");
        _;
    }
}
pragma solidity ^0.5.16;

import "./Mortal.sol";

contract Faucet {

    // Define the events that can be emitted
    event Withdraw(address indexed to, uint amount);
    event Deposit(address indexed from, uint amount);

    // Give out ether to anyone who asks
    function withdraw(uint withdrawAmount) public {

        // Limit the withdraw amount
        require(withdrawAmount <= 0.1 ether, "Withdraw amount cannot be greater than 0.1 ETH");

        // Check the faucet balance
        require(address(this).balance >= withdrawAmount, "Insufficient balance in faucet to fund withdraw");

        // Send the amount to the address that requested it
        msg.sender.transfer(withdrawAmount);
        emit Withdraw(msg.sender, withdrawAmount);
    }

    // Accept any incoming amount
    function () external payable {
        emit Deposit(msg.sender, msg.value);
    }
}
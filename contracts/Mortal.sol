pragma solidity ^0.5.16;

import "./Owned.sol";

contract Mortal is Owned {

    // Destroy the contract
    function destroy() public onlyOwner {
        selfdestruct(owner);
    }
}
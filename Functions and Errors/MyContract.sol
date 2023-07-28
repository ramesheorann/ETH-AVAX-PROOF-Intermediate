// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    address private owner;

    constructor() {
        owner = msg.sender;
    }

    function withdraw(uint amount) public {
        require(amount > 0);                                              //require statement

        uint balance = address(this).balance;
        require(balance >= amount); 

        (bool success, ) = msg.sender.call{value: amount}("");
        assert(success);                                                  //assert statement

        revert("Withdrawal failed");                                      //revert statement
    }

    function getContractBalance() public view returns (uint) {
        return address(this).balance;
    }
}

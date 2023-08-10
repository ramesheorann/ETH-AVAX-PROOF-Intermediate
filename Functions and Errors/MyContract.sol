// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//For this project, write a smart contract that implements the require(), assert() and revert() statements.


contract MyContract {
    address private owner;

    constructor() {
        owner = msg.sender;
    }


    function withdraw(uint amount) public view {
        require(amount > 0,"Amount should be greater than zero");         //require statement

        uint balance = address(this).balance;
        assert(balance >= amount);                                        //assert statement                 
        
        if(amount > balance){
        revert("Withdrawal failed because of insufficient balance");      //revert statement
        }                                                              
    }

    function getContractBalance() public view returns (uint) {
        return address(this).balance;
    }
}

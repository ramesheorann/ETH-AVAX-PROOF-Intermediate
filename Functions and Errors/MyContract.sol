// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

//For this project, write a smart contract that implements the require(), assert() and revert() statements.


contract myContract_for_errorHandling {
    address private owner;
    uint public balance;

    constructor() {
        owner = msg.sender;
    }
    
    //Using Modifier to check if contract caller is owner of the contract
    modifier check_Owner ()  {
        require(owner==msg.sender,"Only Owner can access the Contract"); 
        _;
    }

    function add_amount(uint amount) public check_Owner {
        //require statement to check we are adding amount greater than 0.
        require(amount > 0,"Amount should be greater than zero");        
        balance+=amount;
    }

    function withdraw_amount(uint amount) public check_Owner {
        //assert statement to check if we have sufficient balance to withdraw
        assert(balance >= amount);                                           
        balance-=amount;
    }                                                   
    function check_balance(uint amount) public view check_Owner{
        if(amount > balance){
            //revert statement for showing insufficient balance
            revert("Withdrawal failed because of insufficient balance");       
        }                                                              
    }

    function getContractBalance() public view returns (uint) {
       return balance;
    }
}

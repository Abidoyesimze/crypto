// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Crypto {

    // Owner Dad
    address Owner;

    constructor(){
        Owner = msg.sender;
    }

    // Define Kid

    struct Kid {
        address walletAddress;
        string firstName;
        string lastName;
        uint releaseTime;
        uint amount;
        bool canWithdraw;
    }
    Kid[] public kids;

    // add kid tto contract

    function addKid( address walletAddress, string memory firstName, string memory lastName, uint releaseTime, uint amount, bool canWithdraw) public{
     kids.push(Kid(
        walletAddress,
        firstName,
        lastName,
        releaseTime,
        amount,
        canWithdraw
     ));
}

    function balanceOf() public view returns(uint) {
        return address(this).balance;
    }

    //deposit funds to contract, specifically owner kid's account

    function deposit(address walletAddress) payable public {
        addTokidsBalance(walletAddress);
    }

    function addTokidsBalance(address walletAddress) private {
    for(uint i = 0; i < kids.length; i++) {
        if(kids[i].walletAddress == walletAddress) {
            kids[i].amount += msg.value;


                
            }
        }
    }

    // Kids check if able to withdraw

    // Withdraw money

}
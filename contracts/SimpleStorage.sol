// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract SimpleStorage {
    uint256 public  favoriteNumber;
    int256 public freshNumber;
    function store(uint256 _myNumber ) public {
        favoriteNumber=_myNumber;
       
    }

    address  public myAddress=0x24b19AAf3EF986623f37Ca14e4095351A3755E4e;
    
    function retreive() public view returns(address) {
      
    }
}
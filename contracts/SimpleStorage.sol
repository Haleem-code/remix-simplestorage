// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract SimpleStorage {
    uint256 public  favoriteNumber;
    // People public person =People({favoriteNumber:2, name:"Haleem"});//storing single person only
 
mapping (string => uint256)public nameToFavoriteNumber;
    struct People{
      uint256 favoriteNumber;
      string name;
    }


//Dynamic Array the size of the array isn't given
//FIxed Array [5] specifying number of the array in the square bracket

//Uint256[] public favoriteNumbersLIST
    People[] public people;//Array for multiple people(note the small letter in people
   
    function store(uint256 _favoriteNumber) public {
        favoriteNumber=_favoriteNumber;
      
    }

    address  public myAddress=0x24b19AAf3EF986623f37Ca14e4095351A3755E4e;
    
    function retreive() public view returns(uint256) {
      return favoriteNumber;
    }  


//calldata, Memory and storage
 //calldata(can't be modified) wwhile Memory and storage can be modified;
//both calldata and memory are temporary while storage is permanent   

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
    //  People memory newPerson =People({favoriteNumber:_favoriteNumber, name: _name  });
      people.push(People(_favoriteNumber, _name ));
      nameToFavoriteNumber[_name] =_favoriteNumber;
    }
}
//SPDX-License-Identifier: MIT 

 
 

pragma solidity ^0.8.12; 

 // There is a State, A function and Event 

contract Greeting {      // State Variable + Functions = Contract, Add event when Function is called 

 
 

    string public name;   //stored permanently on the blockchain 

    string public greetingPrefix = "HelloWorld"; 

 
 

    constructor (string memory initialName){   // takes in initial argument and stores/ run only once when smartcontract is deployed, requires argument to be passed in called "innit message. 

            

             name = initialName; 

    }     

     

 
 

    function setName(string memory newName) public {    // function updates states variable in contracr. 

            name = newName; 

 
 

    } 

 
 

    function getGreeting() public view returns (string memory) { 

        return string(abi.encodePacked(greetingPrefix, name)); 

    } 

  

     

}
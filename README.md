# Error Handling Program

This Solidity smart contract basically shows the three different applications of Require(), Revert(), and Assert() functions in solidity

## Description


This Solidity smart contract simply simulates a scenario where if a user tries to transfer tokens amounting to less than 1, it will throw an error. The program also simulates a scenario wherein if a value is tampered with, it will show
an assertion error.


## Getting Started

### Executing program

To run this program, you can use gitpod, an online Solidity IDE. To get started, go to the Gitpod website https://jeffryanpol-soliditysta-rox0ek915vw.ws-us105.gitpod.io

Once you are on the Gitpod website, create a new file by clicking on the "≡" icon in the left-hand sidebar and clicking on new file. Save the file with a .sol extension (e.g., ErrorHandling.sol). Copy and paste the following code into the file:

```javascript

// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract ErrorHandling {


     function transfer(uint _i) public pure {
       
       
        //This function makes sure that the transfer amount should not be less than 0


        require(_i > 0, "Transfer amount must be greater than 0");

    }


    function revert_transfer(uint _i) public pure {
       
        
        if (_i <= 0) {
            revert("Transfer amount must be greater than 0");
        }


    }

    uint original_value = 2;

    uint original_value_2 = 2;

    uint manipulated_value = 0;


    function integrity_check() public {

        original_value = manipulated_value;

        assert(original_value > 1);

    }

    

    function integrity_check2() public view {


        assert(original_value_2 > 1);

    }



}



```
First, go to https://jeffryanpol-soliditysta-rox0ek915vw.ws-us105.gitpod.io

To compile the code, type truffle develop to enter truffle develop and simply type compile in the terminal below the workspace and once the compilation is finished, type migrate and after running that command and once finished, type instance = await ErrorHandling.deployed() and then to use the functions, simply type in instance.insertfunctionnamehere() where functionnamehere is the name of the function you will test out.

## Authors

Metacrafter Kyle  

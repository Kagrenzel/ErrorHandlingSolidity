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




//compile

//migrate

//instance = await HelloWorld.deployed()

//instance.insertfunctionnamehere()


   


}

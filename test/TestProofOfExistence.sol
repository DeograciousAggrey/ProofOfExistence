//SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/ProofOfExistence.sol";


contract TestProofOfExistence {
    
    //Get the address of the ProofOfExistence Contract
    ProofOfExistence proofOfExistence = ProofOfExistence(DeployedAddresses.ProofOfExistence());

    //String document to be tested
    string doc = "Hello there Solidity";

    //Expected boolean for natarized document
    bool expectedBool = true;

    //Lets notarize a document
    function beforeAllNotarize() public {
        proofOfExistence.notarize(doc);
    }

    //Test the checkDocument() function
    function testCheckDocument() public {
        bool returnedBool = proofOfExistence.checkDocument(doc);
        Assert.equal(returnedBool, expectedBool, "The checked document should return true");
    }

    



}

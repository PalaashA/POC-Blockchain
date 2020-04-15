pragma solidity >=0.4.21 <0.7.0;

contract Election {
    //Store candidate
    //Read Candidate
    string public candidate;
    //Constructor

    constructor() public {
        candidate = "Candidate 1";
    }
}
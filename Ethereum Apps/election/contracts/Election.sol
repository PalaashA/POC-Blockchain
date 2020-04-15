pragma solidity >=0.4.21 <0.7.0;

contract Election {
    //Model a Candidate
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    //Store Candidates
    //Fetch Candidate
    mapping(uint => Candidate) public candidates;
    //Store Candidates Count
    uint public candidatesCount;
    
    constructor() public {

    }
}
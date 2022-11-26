pragma solidity ^0.8.2;

contract FundContract {
    string public initiate = "Contract initiated";
    address payable public funder;
    address payable public fundRaiser;

    struct Order {
        int256 fundPrice;
        string[] milestones;
        string description;
        bool completed;
    }

    function confirmOrder() public {
        fundRaiser = payable(msg.sender);
    }

    constructor(string memory _text) {
        initiate = _text;
    }
}

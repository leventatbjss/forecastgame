pragma solidity ^0.4.0;
contract Desk {

    struct Deal {
        address backer;
        address layer;
        uint16 price;
        uint amount;
    }
    
    struct Offer {
        uint id;
        address offeror;
        uint16 price;
        uint amount;
        
        uint next;
    }

    address barman;
    
    mapping(uint16=>Offer) heads;
    mapping(uint=>Offer) next;
    uint offerId;

    function Desk() {
        barman = msg.sender;
    }
    
    function back(uint16 price) payable {
        var offer = Offer(++offerId,msg.sender,price, msg.value,0);
    }
    
    
}

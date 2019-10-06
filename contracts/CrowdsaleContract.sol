pragma solidity ^0.5.0;
import "@openzeppelin/contracts/crowdsale/Crowdsale.sol";
import "@openzeppelin/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "@openzeppelin/contracts/crowdsale/validation/IndividuallyCappedCrowdsale.sol";

contract CrowdsaleContract is Crowdsale,CappedCrowdsale,IndividuallyCappedCrowdsale {
    

    mapping(address => uint256) public contributions;	
    constructor(uint256 rate, address payable wallet, IERC20 token,uint256 cap)
        
        Crowdsale(rate, wallet, token)
        CappedCrowdsale(cap)
        IndividuallyCappedCrowdsale()
        public
    {

    }
    
    
    
    
    
    }
    
    
    

    
    
    



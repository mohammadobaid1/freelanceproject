var tokencontract = artifacts.require("./Freelancetoken.sol");
var crowdsalecontract = artifacts.require("./CrowdsaleContract.sol");


module.exports = function(deployer) {


  deployer.deploy(tokencontract,'OBToken','OB1',18)
  	.then(function(){
  		console.log("token address",tokencontract.address);
  		return deployer.deploy(crowdsalecontract,500,'0xaBf7c9d62657c441389a620e2B2cd35FC1b57D6F',tokencontract.address,50000000000000000000);
  	})
};

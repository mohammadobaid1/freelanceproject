pragma solidity ^0.5.0;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts/access/Roles.sol";

contract Freelancetoken is ERC20,ERC20Detailed {

	using Roles for Roles.Role;

	Roles.Role private admins;

	

	constructor(string memory name, string memory symbol, uint8 decimalss) ERC20Detailed(name,symbol,decimalss) public {
     
        
	_mint(msg.sender, 10000 * (10 ** uint256(decimals())));
      
      
            admins.add(msg.sender);
        

        
      
    }



    modifier onlyadmin() {

    	require(admins.has(msg.sender), "You does not have admin priviliges");
    	_;
    
    }



    function changename(string memory name) public onlyadmin{
    	    	name = name;

    }


    function changesymbol(string memory symbol) public onlyadmin{
    	 symbol = symbol;	
    }




     function addadmin(address[] memory addadmins) public onlyadmin{
                 for (uint256 i=0 ;i< addadmins.length;++i){
                     admins.add(addadmins[i]);
                 }
                 

     }



     function mytokens()public view returns (uint256) {
            return balanceOf(msg.sender);

     }




   

 }




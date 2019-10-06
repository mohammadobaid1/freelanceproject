# Ethereum Freelance Project:

All files are related to ethereum crowdsale project .


## Contract Files:

For this project there are two main contract files which are located inside contract folders

 1- Freelancetoken.sol
 2- CrowdsaleContract.sol


## Working:

Purpose of this project is to create tokens for specific project and then allow investors and public to buy those tokens using crowdsale project to gather funds for projects . 

 Admin will create two seperate contracts one  related to token and other for crowdsale . Purpose of creating two token is to seperate crowdsale logic and token creation logic for better managment and coding practice . Also crowdsale contract runs for specific period of time after which it generally dosen't use while tokens can be utilize in applications.


 This project will work in following manner.

 1- Admin will create token with initial supply 
 2- After that it will create crowdsale contract in which it passed the token contract address and ether wallet address so that tokens can be distributed to investors while ether can be funded to specific account .
 3- Admin will then move required funds from token contract to crowdsale contract for compaign . Investors will then buy tokens from that contract against ether . All ether will be funded to address given at contract creation time. 

 To create ERC20 tokens , opensource contract library [openzeppelin](https://docs.openzeppelin.com) which provides highly modularized and tested contract which we can utilize in our contract .



## Features:

From BlueChip contract , I understand following features . Features can be added or modified as discussion evolves.

1- Basic token creation with maximum cap.
2- Crowdsale contract interface through which investors can buy token.
3- Initial tokenprice and then incremental during crowdsale compaigns .
4- Max purchase of token by an individual investor 
5- function which can tell how many tokens hold by specific account holder
6- functon which can tell whether hardcap reach or not
7- function which can tell what is buy price ? 
8- function which can tell what is sell price ?



## Questions:

1- Will crowdsale contract be run within specific time period like 1 month ?
2- What different types of users and roles will it be ?
3- Will token be released immediately or will it be released after compaign ended or after some specific period? 
4- Should there be an option to kill contract and freeze funds?
5- Will there be refund process if hardcap not reached or for some reason project decided to shutdown?



## Installation:

1- Clone this project.
2- Paste your ethereum private key in truffle-config.js
3- Run `npm install`
4- Run `truffle migrate --network ropsten`


## Compiler Versions:

Truffle v5.0.22 (core: 5.0.22)
Solidity v0.5.0 (solc-js)
Node v8.9.4
Web3.js v1.0.0-beta.37

## Dependencies:

OpenZeppelin 









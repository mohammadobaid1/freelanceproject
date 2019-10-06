const HDWalletProvider = require('truffle-hdwallet-provider');

const mnemonic = '';


module.exports = {
  networks: {
    // development: {
    //   host: "localhost",
    //   port: 8545,
    //   network_id: "*", // Match any network id
    //   gas: 6721975
    // },
     ropsten: {
       provider: () => new HDWalletProvider(mnemonic, `https://ropsten.infura.io/v3/f6a0bb229653431d9c39e403c65c9bb5`),
       network_id: 3,      
       gas: 5500000,        
       confirmations: 2,    
       timeoutBlocks: 200,  
       skipDryRun: true     
     }
  },
  compilers: {
    solc: {
      settings: {
        optimizer: {
          enabled: true,
          runs: 200
        }
      }
    }
  }
};

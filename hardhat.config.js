/**
 * @type import('hardhat/config').HardhatUserConfig
 */
 require("dotenv").config();
 require("@nomiclabs/hardhat-ethers");
 
 module.exports = {
   solidity: "0.8.1",
   defaultNetwork: "ropsten",
   networks: {
     hardhat: {},
     ropsten: {
       url: process.env.DEV_API_URL,
       accounts: [`0x${process.env.PRIVATE_KEY}`],
     },
   },
 };
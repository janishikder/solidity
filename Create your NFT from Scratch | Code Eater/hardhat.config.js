/**
 * @type import('hardhat/config').HardhatUserConfig
 */
 require("dotenv").config();
 require("@nomiclabs/hardhat-ethers");
 const { API_URL, PRIVATE_KEY } = process.env;
 module.exports = {
   solidity: "0.8.7",
   defaultNetwork: "rinkeby",
   networks: {
     hardhat: {},
     rinkeby: {
       url: API_URL,
       accounts: [`0x${PRIVATE_KEY}`],
     },
   },
 };

 //0x8b187b98931aE16D677d11CA4110B15801D6CDA8
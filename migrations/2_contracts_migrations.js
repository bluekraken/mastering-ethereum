const faucet = artifacts.require("./Faucet.sol");

module.exports = function(deployer) {
  deployer.deploy(faucet);
};

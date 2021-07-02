const YikeCoin = artifacts.require('YikeCoin');

module.exports = function (deployer) {
  deployer.deploy(YikeCoin);
};
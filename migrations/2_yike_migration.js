const YikeCoin = artifacts.require('YikeCoin');
require('dotenv').config();

module.exports = function (deployer) {
  deployer.deploy(YikeCoin, process.env.PASSPHRASE_1, process.env.PASSPHRASE_2);
};

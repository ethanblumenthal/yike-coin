# YIKE Coin

YIKE Coin is an ERC-20 token built with Truffle and OpenZeppelin. The Contract has been deployed to the Ropsten test network. Users can interact with the contract via the solve function in which they will receive 1/1000 of the token supply if they input the correct passphrase. The passphrase is set in the contract constructor upon deployment.

Check out the deployed contract on the Ropsten test network on [Etherscan](https://ropsten.etherscan.io/address/0x306364183628f6A075a95057a2E82C05A48b1290).

## Requirements

- NPM

## Installation

1. Install truffle

```bash
npm install truffle -g
```

2. Setup repo

```bash
mkdir yike-coin
cd yike-coin
```

3. Install dependencies by running:

```bash
npm install
```

## Testing

```bash
truffle test
```

## Deployment

For deploying to the Ropsten network, Truffle will use `truffle-hdwallet-provider` for your mnemonic and an RPC URL. Set your environment variables `$INFURA_PROJECT_ID` and `$MNEMONIC` before running:

```bash
truffle migrate --network ropsten --reset
```

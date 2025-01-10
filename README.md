## About

This is a project exploring how we can do a Proxy implementation for the upgradeable smart contracts. The `BoxV1` is an original implementation for the proxy `ERC1967Proxy` contract, which is setup when we run `DeployBox` script. It can be then replaced by the new `BoxV2` implementation, which happens when we run `UpgradeBox` script.

## Learnings

1) Learned about different options how we cound do upgradeable smart contracts: `parameterize`, `social migration`, `proxy`.
2) Learned about `Initializable`, `UUPSUpgradeable`, and `OwnableUpgradeable`.

## Using this repository

1) Run
```
git clone https://github.com/accurec/CyfrinUpdraftCourseUpgradeableContracts.git
```
2) Run `make install` to install dependencies.
3) Have `.env` file with Sepolia RPC URL under `SEPOLIA_RPC_URL` variable, as well as Etherscan verification key under `ETHERSCAN_API_KEY` variable.
4) Setup your account key using `cast wallet import` command under `sepoliaKey` key.
5) Run `make deploy-sepolia` to deploy proxy and `BoxV1` implementation to the network.
6) Run `make upgrade-sepolia`  to upgrade the proxy to the new `BoxV2` implementation.

## TODO list

1) Write more tests :)
2) Add local deployment commands to `Makefile`.
-include .env

.PHONY: all test deploy deploy-sepolia

build:
	forge build

test:
	forge test

install:
	forge install cyfrin/foundry-devops@0.2.2 --no-commit
	forge install openzeppelin/openzeppelin-contracts@v5.1.0 --no-commit
	forge install openzeppelin/openzeppelin-contracts-upgradeable@v5.1.0 --no-commit

deploy-sepolia:
	@forge script script/DeployBox.s.sol:DeployBox --rpc-url $(SEPOLIA_RPC_URL) --account sepoliaKey --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv

upgrade-sepolia:
	@forge script script/UpgradeBox.s.sol:UpgradeBox --rpc-url $(SEPOLIA_RPC_URL) --account sepoliaKey --broadcast --verify --etherscan-api-key $(ETHERSCAN_API_KEY) -vvvv
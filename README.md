# Damn Simple Smartcontract Deployer in Go

I wanted to have a simple app to deploy a smart contract with all new changes to work. I struggled a lot with online resources and created this new one with go lang.

## Pre requisites

- Mac OS
- VS Code
- Golang <https://go.dev/dl/> 1.20.6
- Solidity <https://docs.soliditylang.org/en/v0.8.2/installing-solidity.html> 0.8.20
- Go Ethereum client also known as geth <https://geth.ethereum.org/docs/install-and-build/installing-geth> 1.12.0
- Ganache to run local blockchain <https://trufflesuite.com/ganache/> 2.7.1

## Create a .env file on the root folder with the following

```env
SERVER=http://127.0.0.1:7545
PRIVATE_KEY=5e11eaff08820aa828021082642817c0e9ffb0598972f255e503e3d171420a9b
CONTRACT_ADDRESS=0x274E7A9fcD6376f996d5ec1C50A095a44AaFf0fe
```

## Deploy

To deploy the contract, first you have to compile and generate ABI for later use. Follow these commands to do it. Make sure that you have a folder called "build" and "api" exist.

```sh
solc --evm-version paris --optimize --abi ./contracts/MySmartContract.sol -o build --overwrite
solc --evm-version paris --optimize --bin ./contracts/MySmartContract.sol -o build --overwrite
abigen --abi=./build/MySmartContract.abi --bin=./build/MySmartContract.bin --pkg=api --out=./api/MySmartContract.go
```

Once you do the above, please uncomment deploy() function in main() function inside main.go.

## Run a web service

To run and inspect the contract, run main.go with a contract you deployed above. Please replace that value in .env so that it can query the right one.

``` sh
go run main.go
```

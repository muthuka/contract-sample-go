# Readme

```sh
solc --evm-version paris --optimize --abi ./contracts/MySmartContract.sol -o build --overwrite
solc --evm-version paris --optimize --bin ./contracts/MySmartContract.sol -o build --overwrite
abigen --abi=./build/MySmartContract.abi --bin=./build/MySmartContract.bin --pkg=api --out=./api/MySmartContract.go
```

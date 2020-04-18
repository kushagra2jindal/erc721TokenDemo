# erc721TokenDemo
Creating a erc721 dummy token using open zeppelin solidity open source library

# Prerequirements
1. node.js and npm.
2. Ganache-cli or ganache running on port 8545.
3. truffle

To install ganache-cli:-
``` npm install -g ganache-cli ```

To install truffle:-
``` npm install -g truffle ```

# Installation

Cloning the project

```git clone https://github.com/kushagra2jindal/erc721TokenDemo.git```

Install the npm packages

```npm install```

Compile the smart contract

``` truffle compile ```

Migrate the smart contract on the ganache

``` truffle migrate ```

Minting and transfering tokens

```
truffle console
token = await token.deployed()
token._mint('address1')    // address can be any one account address provided by ganache-cli
// A ERC721 token is minted with token id as 1
token.transferFrom('address1', 'address2', token, {from:'address1'})  //transfer token from address1 to address2

```


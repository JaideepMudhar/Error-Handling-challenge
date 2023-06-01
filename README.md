# Error Handling Challenge

This project is an "Error Handling" smart contract that demonstrates the functionalities of require(), revert() and assert() statement and deployment of the smart contract on ethereum using truffle framework.

## Description

The smart contract is written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a three functions require_impl(), revert_impl() and assert_impl(). This program serves as handling error in smart contracts for blockchain transactions.,

## Getting Started
To run this program, you need to install Truffle framework, node js.
## Install
1. Install [Node.js](https://nodejs.org)

   Download and install from the official site.

2. Install [Truffle](https://github.com/trufflesuite/truffle)

   ```bash
   npm install -g truffle
   ```
   ## Initialize
   
   1. Initialize Truffle in your project folder

   ```bash
   truffle init
   ```
   After initialization, two folders called `contracts` and `migrations` will be created. Contracts go in the `contracts` folder while contract deployment settings go in `migrations`.
   2. challenge.sol smart contract

```solidity
   // SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
contract challenge{

    address public owner;

    constructor(){
        owner=msg.sender;
    }

    function require_impl(uint num)public view returns(uint) {
        require(msg.sender==owner,"only owner can execute this function");
        require(num>10, "number should be greater than 10");
        return(num=num+5);
    }

    function revert_impl(uint a)public pure returns(uint) {

       a=a+3;
        if(a>=10){
         revert("number should be less than 10");     
           }
       return(a); 
    }

    function assert_impl(uint b)public view returns(uint){
        assert(b==10);
        return(b+10);
    }
}
 
   ```
3. 3_deploy_migration.js 
```javascript
var challenge = artifacts.require("challenge");
module.exports = function(deployer) {
  deployer.deploy(challenge);
}
```
### Executing program
1. Start Truffle console in development mode

   ```bash
   truffle develop
   ```

   In the Truffle console, execute

   ```bash
   compile
   migrate
   ```
2. Test challenge.sol contract

   In the interactive Truffle console, run the following commands:

   ```javascript
   let instance = await challenge.deployed()
   instance.require_impl()
   ```
   ```javascript
   let instance = await challenge.deployed()
   instance.revert_impl()
   ```
   ```javascript
   let instance = await challenge.deployed()
   instance.assert_impl()
   ```
## Authors

Metacrafter Jaideep Kaur
[jaideep.e12885@cumail.in]

## License

This project is licensed under the MIT License - see the LICENSE.md file for details


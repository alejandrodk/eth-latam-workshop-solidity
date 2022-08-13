//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// menos pesado -> yarn size-contracts
// mas gas
contract NoConstants {
    address public TOKEN;

    constructor (address _token){
        TOKEN = _token;
    }
}

// mas pesado (intermedio)
// menos gas (intermedio)
contract Immutable {
    address public immutable TOKEN;

    constructor(address _token){
        TOKEN = _token;
    }
}

// mas pesado
// menos gas
contract Constant {
    address public constant TOKEN = 0x153073310327caA6abB76F735d115E5c8bA1617B;

    constructor(){

    }

}
//SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/security/Pausable.sol";

pragma solidity ^0.8.9;

contract OzStoppablePattern is Pausable { 

// funciona cuando el contrato no esta pausado
    function deposit() public payable whenNotPaused { 
        // some code 
    }

// funciona siempre
    function withdraw() public view { 
        // some code 
    }  

// solo cuando el contrato esta pausado
    function onlyPaused() public view whenPaused returns (bool) {
        return this.paused();
    }
}

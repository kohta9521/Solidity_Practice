// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract ZombieFactory {
    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    Zombie[] public zombies;

    function _createZombie(string _name, uint _dna) private {
        // here start
        zombies.push(Zombie(_name, _dna));
    }
}

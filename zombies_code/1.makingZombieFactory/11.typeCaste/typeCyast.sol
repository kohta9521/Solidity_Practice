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

    function _generateRandomDna(string _str) private view returns (uint) {
        uint rand = uint16(_str);
        uint rand = uint(keccak256(_str));
        return rand % dnaModulus;
    }
}

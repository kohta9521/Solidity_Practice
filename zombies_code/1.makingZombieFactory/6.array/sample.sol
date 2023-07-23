// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract ZombieFactory {
    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    // here you make public Zombies Array
    Zombie[] public zombies;
}

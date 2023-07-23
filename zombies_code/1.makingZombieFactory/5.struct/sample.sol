// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract ZombieFactory {
    uint dnaDigits = 16;
    uint dnaModuls = 10 ** dnaDigits;

    // here you make Zombie struct
    struct Zombie {
        string name;
        uint dna;
    }
}

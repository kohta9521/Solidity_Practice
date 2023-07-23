// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

constract ZombieFactory {
  uint dnaDigits = 16;
  uint dnaModulus = 10 ** dnaDigits;

  struct Zombie {
    string name;
    uint dna;
  }

  Zombie[] public zombies;

  // here you make function name is Zombie
  function createZombie(string _name, uint _dna) {
    
  }
}

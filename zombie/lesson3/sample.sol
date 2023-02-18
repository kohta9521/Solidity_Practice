pragma solidity ^0.4.19;

contract ZombieFactory {
    uint256 dnaDigits = 16;
    uint256 dnaModulus = 10**dnaDigits;

    // ここにZombieというstructを定義するのだ
    struct Zombie {
        string name;
        uint256 dna;
    }
}

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {ERC721} from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

// import "hardhat/console.sol";

contract MetaKawaii is ERC721, Ownable {
    constructor() ERC721("MetaKawaii", "DROPS") {}

    function _baseURI() internal pure override returns (string memory) {
        return "https://example.com/";
    }

    function mint(address to, uint256 tokenId) public onlyOwner {
        _safeMint(to, tokenId);
    }
}

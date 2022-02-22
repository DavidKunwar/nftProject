// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract EmotionalShapes is ERC721 {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;

    constructor() ERC721("EmotionalShapes", "ESS") {}

    function _baseURI() internal pure override returns (string memory) {
        // return URL for metadata of NFT
        return "https://e443-103-252-216-67.ngrok.io/api/erc721/";
    }

    //publish an instance of this Smart Contract on the blockchain
    function mint(address to)
        public returns (uint256)
    {
        require(_tokenIdCounter.current() < 3); 
        _tokenIdCounter.increment();
        //publish token
        _safeMint(to, _tokenIdCounter.current());

        return _tokenIdCounter.current();
    }
}
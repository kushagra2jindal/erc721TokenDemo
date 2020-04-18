pragma solidity ^0.5.16;

import "/openzeppelin-solidity/contracts/token/ERC721/ERC721Full.sol";
import "/openzeppelin-solidity/contracts/token/ERC721/ERC721Burnable.sol";

contract token is ERC721Full, ERC721Burnable{

    uint totalTokenToBeMinted = 5;
  
    constructor() 
      ERC721Full("Token", "TNK")
      public {}

    
    function mint(address to, uint256 tokenId) public {
      _mint(to, tokenId);
    }


    function _mint(address to) public{
      require((totalSupply()+1) <= totalTokenToBeMinted , "Cant mint more");
      mint(to, totalSupply().add(1));
    }

}
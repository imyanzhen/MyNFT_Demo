// SPDX-License-Identifier: GPL-3.0 

pragma solidity >=0.7.0 <0.9.0;

contract SimpleNFT {
   string public tokenName;
   string public tokenSymbol;
  
   mapping(uint256 => address) public ownerOf;
   mapping(uint256 => bool) private exists;
   mapping(uint256 => address) private approvals;
   
 
    constructor(string memory _name, string memory _symbol){
        tokenName = _name;
        tokenSymbol = _symbol;
    }

    function mint(address _to, uint256 _tokenId) public returns (uint256) {
        require(exists[_tokenId] != true);
        ownerOf[_tokenId] = _to;
        return _tokenId;
    }
   

    function approveAddress(address _to, uint256 _tokenId) public returns (address){
        //
        require(_to != address(0));
        //
        //
    }
   
   
    function transfer(address _to, uint256 _tokenId) public returns (uint256){
        
        require(msg.sender == ownerOf[_tokenId] || msg.sender == approvals[_tokenId]);
        require(_to != address(0));
        //
        //
    }

}

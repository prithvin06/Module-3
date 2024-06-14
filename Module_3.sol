//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts@5.0.1/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@5.0.1/access/Ownable.sol";


contract Switzerland is ERC20, Ownable {
    constructor(address initialOwner)
        ERC20("Switzerland", "SWZ")
        Ownable(initialOwner)
      
    {}

    function mint(address _address, uint256 swiz_tokens) public onlyOwner {
        _mint(_address, swiz_tokens);
    }

    function burn(uint256 swiz_tokens) public returns(bool) {
        _burn(msg.sender,swiz_tokens);
        return true;
    }   
    function transfer(address _address, uint256 swiz_tokens) public override returns(bool){
        _transfer(msg.sender, _address, swiz_tokens);
        return true;
    }    
}

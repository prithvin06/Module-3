# Switzerland Token Smart Contract
## Overview
This smart contract implements an ERC20 token named "Switzerland" with the symbol "SWZ". It uses OpenZeppelin's ERC20 and Ownable contracts to ensure a secure and standard implementation.

### Description
- The Switzerland token contract provides the following functionalities:

- ERC20 Standard: Ensures compatibility with existing ERC20 interfaces.
- Ownership: Utilizes OpenZeppelin's Ownable module to manage contract ownership.
- Minting: Only the owner can mint new SWZ tokens to specified addresses.
- Burning: Token holders can burn their own tokens to reduce the total supply.
- Transfer: Standard ERC20 transfer function with potential for custom logic.
## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Module_3.sol). Copy and paste the following code into the file:

```solidity
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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile Module_3.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Module_3" contract from the dropdown menu, and then click on the "Deploy" button.



M.Prithvin
[prithvin04@gmail.com]

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

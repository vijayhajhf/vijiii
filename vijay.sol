// SPDX-License-Identifier: MIT

pragma solidity 0.8.9;

// public variables here
contract MyTokenVijay {
    string public Name;
    uint256 public Supply;
    string public Symbol;
    
// mapping variable here
    mapping(address => uint256) public balances;

    constructor(string memory input_name, string memory input_symbol, uint256 total_Supply) {
        Name = input_name;
        Supply = total_Supply;
        Symbol =  input_symbol;
        
    }
   
    // mint function
    function mint(address mint_address, uint256 mint_value) public {
        Supply += mint_value;
        balances[mint_address] += mint_value;
    }

    // burn function
    function burn(address burn_address, uint256 burn_value) public {
        require(balances[burn_address] >= burn_value, "insufficient balance");
        Supply -= burn_value;
        balances[burn_address] -= burn_value;
    }
}
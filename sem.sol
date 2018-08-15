pragma solidity ^0.4.24;


import "https://github.com/semadaio/openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol";



/**
 * @title SEM Token
 * @dev A mintable ERC20 token. Intended to be used for a POC / demo. Can mint, can burn.
 */
contract SEM is StandardToken {

  string public constant name = "SEM Token";
  string public constant symbol = "SEM";
  uint8 public constant decimals = 18;

/**
   * @note 1B initial supply
   */

  uint256 public constant INITIAL_SUPPLY = 1000000000 * (10 ** uint256(decimals));

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  constructor() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    emit Transfer(address(0), msg.sender, INITIAL_SUPPLY);
  }

}

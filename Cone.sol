pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Cone is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Cone(address _owner)  UpgradeableToken(_owner) {
    name = "Cone";
    symbol = "CONE";
    totalSupply = 10000000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}
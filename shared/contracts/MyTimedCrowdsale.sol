pragma solidity ^0.4.24;

import "./TimedCrowdsale.sol";
import "./Crowdsale.sol";

contract MyTimedCrowdsale is TimedCrowdsale{
  constructor(uint256 _rate, address _wallet, IERC20 _token, uint256 openingTime, uint256 closingTime)  Crowdsale(_rate, _wallet, _token) TimedCrowdsale(openingTime, closingTime) public {
  }
    
  function fuzz_always_true_PositiveBalance() public view returns (bool) {
    if (token.balanceOf(address(this)) == 0) {
        return false;
    }
    return true;
  }

}

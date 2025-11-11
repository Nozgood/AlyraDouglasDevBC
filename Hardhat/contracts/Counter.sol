// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;
import "hardhat/console.sol";

contract Counter {
  uint public x;

  event Increment(uint by);

  function inc() public {
    require(x<2, "trop haut");
    console.log("Current value of x:", x);
    x++;
    emit Increment(1);
  }

  function incBy(uint by) public {
    require(by > 0, "incBy: increment should be positive");
    x += by;
    emit Increment(by);
  }
}

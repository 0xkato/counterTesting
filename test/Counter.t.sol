// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Counter.sol";

contract CounterTest is Test {
    Counter public counter;

    function setUp() public {
       counter = new Counter("start", 5);
       counter.changeNumber(0);
       counter.changeName("First");
    }

    function testIncrement() public {
        counter.increment();
        assertEq(counter.number(), 1);
    }

    function testDecrement() public {
        counter.changeNumber(100);
        counter.decrement();
        assertEq(counter.number(), 99);
    }

    function testSetNumber(uint256 x) public {
        counter.changeNumber(x);
        assertEq(counter.number(), x);
    }

    function testResetCounter(uint256 x) public {
        counter.changeNumber(x);
        counter.resetCount();
        assertEq(counter.number(), 0);
    }

}

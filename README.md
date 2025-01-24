# VHDL Integer Overflow Bug
This repository demonstrates an uncommon bug in VHDL related to integer overflow in a simple counter.  The provided VHDL code implements a counter that increments on each rising clock edge. However, it lacks a mechanism to handle integer overflow, leading to unpredictable results when the counter reaches its maximum value.

The `bug.vhdl` file contains the erroneous code.  The solution, which adds overflow handling, is in `bugSolution.vhdl`.

## Bug Description
The primary issue lies in the absence of an overflow check in the counter logic.  Integers in VHDL have a limited range, and exceeding this range results in undefined behavior.  This is particularly problematic in simulations and hardware implementations where this may cause unexpected behavior and even hardware failure.

## Solution
The solution involves adding a check to determine if the counter has reached its maximum value.  If it has, it is reset to 0. This approach prevents integer overflow and ensures predictable counter behavior. The solution also demonstrates the use of a more descriptive variable name for improved code readability.

This example highlights the importance of considering integer overflow when designing VHDL code, especially in applications involving counters or arithmetic operations.
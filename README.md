# Stack Overflow in Recursive Factorial Function (Hack)

This repository demonstrates a subtle bug in Hack where a recursive function, intended to calculate factorials, leads to a stack overflow due to integer overflow. The `int` type hint doesn't prevent exceeding the maximum representable integer value.

The `bug.hack` file contains the erroneous code. The `bugSolution.hack` file offers a solution to address the integer overflow problem.

## Bug Description

A recursive factorial function is defined with an `int` return type.  The function compiles in Hack, but for inputs larger than a certain threshold (due to the limits of 32-bit integers), an integer overflow occurs, ultimately leading to a stack overflow because of the unbounded recursion.

## Solution

The provided solution uses a larger integer type, such as `int64`, to prevent the overflow issue and avoids stack overflow exceptions for larger inputs.
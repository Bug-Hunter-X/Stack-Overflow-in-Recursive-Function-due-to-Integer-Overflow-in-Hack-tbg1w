function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will cause a stack overflow error for large values of x because it recursively calls itself without a base case.  The issue isn't immediately apparent as the base case appears present, but the issue is with the type hint 'int'. Hack will allow this to compile even though the factorial function will result in values exceeding the range of a 32-bit integer (common for int type hints).
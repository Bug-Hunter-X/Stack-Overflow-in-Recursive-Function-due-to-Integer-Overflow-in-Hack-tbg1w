function foo(x: int64): int64 {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
  echo foo(20);
}

This revised code utilizes `int64` which greatly extends the range of values that can be handled by the factorial function thus avoiding stack overflow errors for inputs that cause the factorial to exceed the capacity of a 32-bit integer.
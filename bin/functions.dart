void main() {
  sum();

  // *function with parameter with return value
  sumParams(1, 2);
  var sum1 = sumReturn(5, 6);
  print('Sum Return :$sum1');
}

// !function no parameter no return value
void sum() {
  print(2 + 3);
}

// !function with parameter with return value

void sumParams(int a, int b) {
  print('sum :${a + b}');
}

int sumReturn(int a, int b) {
  return a + b;
}

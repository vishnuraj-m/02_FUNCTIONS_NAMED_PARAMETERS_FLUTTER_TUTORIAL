void main() {
  sum();

  // *function with parameter with return value
  sumParams(1, 2);
  var sum1 = sumReturn(5, 6);
  print('Sum Return :$sum1');

  // *Required Parameter
  sumRequired(firstNumber: 10, secondNumber: 6);
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

// !Required Parameter

void sumRequired({required int firstNumber, required int secondNumber}) {
  print('Sum Required: ${firstNumber + secondNumber}');
}

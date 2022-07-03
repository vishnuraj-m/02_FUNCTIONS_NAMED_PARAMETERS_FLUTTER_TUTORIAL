void main() {
  sum();

  // *function with parameter with return value
  sumParams(1, 2);
  var sum1 = sumReturn(5, 6);
  print('Sum Return :$sum1');

  // *Required Parameter
  sumRequired(firstNumber: 10, secondNumber: 6);

  // *Optional Parameter
  sumOptionalParams(a: 100, b: 150, c: 15);

  // *Function pass inside other Function
  sumFunction(5, 6, sumParams);
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

// !Optional Parameter

void sumOptionalParams({required int a, required int b, int c = 0}) {
  print('Sum Optional Parameter: ${a + b + c}');
}

// !Function pass inside other Function

void sumFunction(int a, int b, void Function(int, int) customSum) {
  customSum(a, b);
}

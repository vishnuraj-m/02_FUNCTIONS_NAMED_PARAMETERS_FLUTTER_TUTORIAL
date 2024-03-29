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

  // *Anonymous Function
  sumAnonymousFunction(15, 16, (int x, int y) {
    print('Anonymous Function Sum : ${x + y}');
  });

  //* Future Function
  sumFuture(5, 8);
  print('After Sum Future');

// *Future Function Pass to Future Function
  sumF();
  print('After Sum Future');
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

// !Anonymous Function

void sumAnonymousFunction(int a, int b, void Function(int, int) customSum) {
  customSum(a, b);
}

// !Future Function

Future<void> sumFuture(int a, int b) async {
  await Future.delayed(Duration(seconds: 3));
  print('Sum Future :${a + b}');
}

//! Future Function Pass to Future Function

Future<int> sumFuture1(int a, int b) async {
  await Future.delayed(Duration(seconds: 3));
  print('Sum Future1: ${a + b}');
  return a + b;
}

Future<void> sumF() async {
  await sumFuture(33, 22);
  print('in just sum');
}

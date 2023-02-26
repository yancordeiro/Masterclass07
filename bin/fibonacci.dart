import 'dart:io';

int fibonacci(int counter) {
  // int number = 1;
  // int previousNumber = 0;
  // int nextNumber = 0;

  // for (int i = 0; i < counter; i++) {
  //   nextNumber = number + previousNumber;
  //   previousNumber = number;
  //   number = nextNumber;
  //   print(nextNumber);
  // }
  // return nextNumber;
  if (counter == 0 || counter == 1) {
    return counter;
  } else {
    return fibonacci(counter - 1) + fibonacci(counter - 2);
  }
}

void main() {
  print('quantas posiçoes da sequencia de fibonacci vc deseja imprimir? ');
  String? n = stdin.readLineSync();
  int counter = int.parse(n!);
  print(fibonacci(counter));
}

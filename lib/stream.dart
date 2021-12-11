import 'dart:async';

class Calculator {
  String input = '', output = '';
  double a = 0, b = 0, result = 0;
  String ope = '';
  Calculator();

  StreamController calculatorController = StreamController<String>.broadcast();
  Stream get calculatorStream => calculatorController.stream;
  Sink get calculatorSink => calculatorController.sink;
  void inputNumber(String number) {
    output += number;
    input += number;
    calculatorSink.add(output);
  }

  void inputOperator(String operator) {
    a = double.parse(input);
    input = '';
    output += operator;
    ope = operator;
    calculatorSink.add(output);
  }

  void calc() {
    b = double.parse(input);
    if (ope == '+') {
      result = a + b;
    }
    if (ope == '-') {
      result = a - b;
    }
    if (ope == '*') {
      result = a * b;
    }
    if (ope == '/') {
      result = a / b;
    }
    output = result.toString();
    calculatorSink.add(output);
  }

  void cancel() {
    output = '';
    input = '';
    calculatorSink.add(output);
  }
}

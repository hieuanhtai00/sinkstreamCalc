import 'package:flutter/material.dart';
import 'package:sink_stream_calc/button.dart';
import 'dart:async';

import 'package:sink_stream_calc/stream.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('CALCULATOR'),
          centerTitle: true,
        ),
        body: MyCalculator(),
      ),
    );
  }
}

class MyCalculator extends StatelessWidget {
  Calculator calculatorController = Calculator();
  MyCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Calculator>(
      builder: (_, calc) {
        return Column(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.black,
                ),
                child: Center(
                  child: StreamBuilder(
                    stream: calculatorController.calculatorStream,
                    builder: (context, output) {
                      return Text(
                        output.hasData ? output.data.toString() : '',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      );
                    },
                  ),
                ),
              ),
              flex: 2,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                children: [
                  TextButton(
                    onPressed: () {
                      calculatorController.cancel();
                    },
                    child: butC,
                  ),
                  TextButton(
                    onPressed: () {
                      calculatorController.cancel();
                    },
                    child: butpercent,
                  ),
                  TextButton(
                    onPressed: () {
                      calculatorController.cancel();
                    },
                    child: but$,
                  ),
                  TextButton(
                    onPressed: () {
                      calculatorController.inputOperator('/');
                    },
                    child: butdiv,
                  ),
                  TextButton(
                    onPressed: () {
                      calculatorController.inputNumber('7');
                    },
                    child: but7,
                  ),
                  TextButton(
                    onPressed: () {
                      calculatorController.inputNumber('8');
                    },
                    child: but8,
                  ),
                  TextButton(
                    onPressed: () {
                      calculatorController.inputNumber('9');
                    },
                    child: but9,
                  ),
                  TextButton(
                    onPressed: () {
                      calculatorController.inputOperator('-');
                    },
                    child: butsub,
                  ),
                  TextButton(
                    onPressed: () {
                      calculatorController.inputNumber('4');
                    },
                    child: but4,
                  ),
                  TextButton(
                    onPressed: () {
                      calculatorController.inputNumber('5');
                    },
                    child: but5,
                  ),
                  TextButton(
                    onPressed: () {
                      calculatorController.inputNumber('6');
                    },
                    child: but6,
                  ),
                  TextButton(
                    onPressed: () {
                      calculatorController.inputOperator('+');
                    },
                    child: butsum,
                  ),
                  TextButton(
                    onPressed: () {
                      calculatorController.inputNumber('1');
                    },
                    child: but1,
                  ),
                  TextButton(
                    onPressed: () {
                      calculatorController.inputNumber('2');
                    },
                    child: but2,
                  ),
                  TextButton(
                    onPressed: () {
                      calculatorController.inputNumber('3');
                    },
                    child: but3,
                  ),
                  TextButton(
                    onPressed: () {
                      calculatorController.inputOperator('*');
                    },
                    child: butmul,
                  ),
                  TextButton(
                    onPressed: () {
                      calculatorController.inputNumber('0');
                    },
                    child: but0,
                  ),
                  TextButton(
                    onPressed: () {
                      calculatorController.cancel();
                    },
                    child: butdot,
                  ),
                  TextButton(
                    onPressed: () {
                      calculatorController.calc();
                    },
                    child: butequal,
                  ),
                ],
              ),
              flex: 8,
            ),
          ],
        );
      },
    );
  }
}

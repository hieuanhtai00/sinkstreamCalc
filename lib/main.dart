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
  Widget button({required void onpress, required Widget child}) {
    return TextButton(
      onPressed: () {
        onpress;
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
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
              button(onpress: calculatorController.cancel(), child: butC),
              button(onpress: calculatorController.cancel(), child: butpercent),
              button(onpress: calculatorController.cancel(), child: but$),
              button(
                  onpress: calculatorController.inputOperator('/'),
                  child: butdiv),
              button(
                  onpress: calculatorController.inputNumber('7'), child: but7),
              button(
                  onpress: calculatorController.inputNumber('8'), child: but8),
              button(
                  onpress: calculatorController.inputNumber('9'), child: but9),
              button(
                  onpress: calculatorController.inputOperator('-'),
                  child: butsub),
              button(
                  onpress: calculatorController.inputNumber('4'), child: but4),
              button(
                  onpress: calculatorController.inputNumber('5'), child: but5),
              button(
                  onpress: calculatorController.inputNumber('6'), child: but6),
              button(
                  onpress: calculatorController.inputOperator('+'),
                  child: butsum),
              button(
                  onpress: calculatorController.inputNumber('1'), child: but1),
              button(
                  onpress: calculatorController.inputNumber('2'), child: but2),
              button(
                  onpress: calculatorController.inputNumber('3'), child: but3),
              button(
                  onpress: calculatorController.inputOperator('*'),
                  child: butmul),
              button(
                  onpress: calculatorController.inputNumber('0'), child: but0),
              button(onpress: calculatorController.cancel(), child: butdot),
              button(onpress: calculatorController.calc(), child: butequal),
            ],
          ),
          flex: 8,
        ),
      ],
    );
  }
}

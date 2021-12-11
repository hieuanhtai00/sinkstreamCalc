import 'package:flutter/material.dart';

class ButtonRectangle extends StatelessWidget {
  String input = '';
  ButtonRectangle({Key? key, required this.input}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          input,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(Radius.circular(5))),
    );
  }
}

class ButtonCircle extends StatelessWidget {
  String input = '';
  ButtonCircle({Key? key, required this.input}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          input,
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.yellow,
        shape: BoxShape.circle,
      ),
    );
  }
}

ButtonRectangle butC = ButtonRectangle(input: 'C');
ButtonRectangle butpercent = ButtonRectangle(input: '%');
ButtonRectangle but$ = ButtonRectangle(input: '\$');
ButtonRectangle but1 = ButtonRectangle(input: '1');
ButtonRectangle but2 = ButtonRectangle(input: '2');
ButtonRectangle but3 = ButtonRectangle(input: '3');
ButtonRectangle but4 = ButtonRectangle(input: '4');
ButtonRectangle but5 = ButtonRectangle(input: '5');
ButtonRectangle but6 = ButtonRectangle(input: '6');
ButtonRectangle but7 = ButtonRectangle(input: '7');
ButtonRectangle but8 = ButtonRectangle(input: '8');
ButtonRectangle but9 = ButtonRectangle(input: '9');
ButtonRectangle but0 = ButtonRectangle(input: '0');
ButtonRectangle butdot = ButtonRectangle(input: '.');
ButtonCircle butdiv = ButtonCircle(input: '/');
ButtonCircle butsum = ButtonCircle(input: '+');
ButtonCircle butsub = ButtonCircle(input: '-');
ButtonCircle butmul = ButtonCircle(input: '*');
ButtonCircle butequal = ButtonCircle(input: '=');

import 'package:app/calculator/calculator-widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(AppHaughUnit());

class AppHaughUnit extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorWidget()
    );
  }

}
import 'package:flutter/material.dart';

class CalculatorWidget extends StatefulWidget {
  @override
  _CalculatorWidget createState() => _CalculatorWidget();
}

class _CalculatorWidget extends State<CalculatorWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Unidade Haugh'),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text('Digite o peso do ovo em gramas:'),
            TextField(),
            Text('Digite a altura do ovo em milimetros: '),
            TextField(),
            RaisedButton(
              onPressed: () {},
              child: Text('Calcular')
            )
          ],
        ),

      ),
    );
  }

}
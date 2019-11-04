import 'package:flutter/material.dart';

class CalculatorWidget extends StatefulWidget {
  @override
  _CalculatorWidget createState() => _CalculatorWidget();
}

class _CalculatorWidget extends State<CalculatorWidget> {

  final height = TextEditingController();
  final weight = TextEditingController();

  var _calc = 0;

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
            TextField(
              controller: height,
            ),
            Text('Digite a altura do ovo em milimetros: '),
            TextField(
              controller: weight,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _calc = int.tryParse(height.text) + int.tryParse(weight.text);
                });
              },
              child: Text('Calcular')
            ),
            Text('Resultado é: ${_calc}')
          ],
        ),

      ),
    );
  }

}
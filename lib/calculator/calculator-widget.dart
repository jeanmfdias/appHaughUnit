import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorWidget extends StatefulWidget {
  @override
  _CalculatorWidget createState() => _CalculatorWidget();
}

class _CalculatorWidget extends State<CalculatorWidget> {

  final height = TextEditingController();
  final weight = TextEditingController();

  final _formBase = GlobalKey<FormState>();

  var _calc = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Unidade Haugh'),
          backgroundColor: Colors.green,
        ),


        body: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Form(
            key: _formBase,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Text(
                  'Digite o peso do ovo em gramas (g):',
                  style: TextStyle(fontSize: 16),
                ),
                TextFormField(
                  controller: weight,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  validator: (value) {
                    if (double.tryParse(value) == null) {
                      return 'Digite um número valido.';
                    }
                    if (value.trim().isEmpty) {
                      return 'Campo requirido.';
                    }
                    return null;
                  },
                ),
                Divider(color: Colors.transparent),
                Text(
                  'Digite a altura do ovo em milimetros (mm): ',
                  style: TextStyle(fontSize: 16),
                ),
                TextFormField(
                  controller: height,
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                  validator: (value) {
                    if (double.tryParse(value) == null) {
                      return 'Digite um número valido';
                    }
                    return null;
                  },
                ),
                Divider(color: Colors.transparent),
                RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: () {
                    if (_formBase.currentState.validate()) {
                      setState(() {
                        _calc = 30.0 * pow(double.tryParse(weight.text), 0.37) - 100.0;
                        _calc = 32.0 * _calc / 100.0;
                        _calc = double.tryParse(height.text) - sqrt(_calc) + 1.9;
                        _calc = 100.0 * (log(_calc) / ln10);
                      });
                    } else {
                      setState(() {
                        _calc = 0;
                      });
                    }
                  },
                  child: Text(
                    'Calcular',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Divider(),
                Text(
                  'Resultado é: ${_calc}',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ),

      ),
    );
  }

}
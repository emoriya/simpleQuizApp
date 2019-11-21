import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  Resultado(this.totalScore, this.resetHandler);

  String get fraseResultado {
    var textoResultado;
    if (totalScore <= 8) {
      textoResultado = 'Mehhhhhhh!';
    } else if (totalScore <= 12) {
      textoResultado = 'Coisa Lindra!';
    } else {
      textoResultado = 'Acabelsio!';
    }
    return textoResultado;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: <Widget>[
          Text(
            fraseResultado,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            'Pontuação: $totalScore',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Reiniciar!'),
            onPressed: resetHandler,
            color: Colors.blue,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}

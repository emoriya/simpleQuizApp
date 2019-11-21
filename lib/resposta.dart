import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final Function selectHandler;
  final String respostaTexto;
  
  Resposta(this.selectHandler, this.respostaTexto);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(respostaTexto),
        onPressed: selectHandler,
      ),
    );
  }
}

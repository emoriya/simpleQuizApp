import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String questoesTextos;

  Questao(this.questoesTextos);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questoesTextos,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

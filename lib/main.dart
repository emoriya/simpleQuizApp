import 'package:flutter/material.dart';

import './quiz.dart';
import './resultado.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _indexQuestao = 0;
  var _totalScore = 0;
  final _questoes = const [
    {
      'questaoTexto': 'Qual sua cor favorita?',
      'respostas': [
        {'text': 'Branco', 'score': 0},
        {'text': 'Preto', 'score': 10},
        {'text': 'Vermelho', 'score': 5},
        {'text': 'Verde', 'score': 3}
      ],
    },
    {
      'questaoTexto': 'Qual seu animal preferido?',
      'respostas': [
        {'text': 'Gato', 'score': 3},
        {'text': 'Cachorro', 'score': 10},
        {'text': 'Peixe', 'score': 3},
        {'text': 'Tartaruga', 'score': 10}
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _indexQuestao = 0;
      _totalScore = 0;
    });
  }

  void _respondeQuestao(int score) {
    _totalScore += score;
    if (_indexQuestao < _questoes.length) {
      setState(() {
        _indexQuestao++;
      });
    } else {
      _indexQuestao = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Primeiro App'),
        ),
        body: _indexQuestao < _questoes.length
            ? Quiz(
                respondeQuestao: _respondeQuestao,
                questao: _questoes,
                indexQuestao: _indexQuestao)
            : Resultado(_totalScore, _resetQuiz),
      ),
    );
  }
}

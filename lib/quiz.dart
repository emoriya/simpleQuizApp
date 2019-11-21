import 'package:flutter/material.dart';

import 'questao.dart';
import 'resposta.dart';

class Quiz extends StatelessWidget {
  final Function respondeQuestao;
  final List<Map<String, Object>> questao;
  final int indexQuestao;

  Quiz(
      {@required this.respondeQuestao,
      @required this.questao,
      @required this.indexQuestao});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questao(
          questao[indexQuestao]['questaoTexto'],
        ),
        ...(questao[indexQuestao]['respostas'] as List<Map<String, Object>>).map((questao) {
          return Resposta(() => respondeQuestao(questao['score']), questao['text'], );
        }).toList(),
      ],
    );
  }
}

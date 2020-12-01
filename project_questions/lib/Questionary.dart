import 'package:flutter/cupertino.dart';

import 'Answer.dart';
import 'Question.dart';

class Questionary extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final int selectedQuestion;
  final void Function(int) answer;

  Questionary({
      @required this.questions,
      @required this.selectedQuestion,
      @required this.answer
  });

  bool get hasQuestion {
    return selectedQuestion < questions.length;
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> answers = hasQuestion ? questions[selectedQuestion]['answers'] : null;

    return Container(
      child: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Question(questions[selectedQuestion]['text'])
            ),
            SizedBox(height: 250),
            ...answers.map((obj) => Answer(obj['text'], () => answer(obj['score']))).toList()
          ]
        )
      )
    );
  }

}
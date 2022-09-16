import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final Function checkAnswer;
  final int qIndex;

  const Quiz({super.key, required this.questions, required this.checkAnswer, required this.qIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
                children: [
                  Question(
                      questionText: questions[qIndex]['question'].toString()),
                  ...(questions[qIndex]['answer'] as List<Map<String, Object>>)
                      .map((answer) =>
                          Answer(answer: answer["text"].toString(), selectedOption: () => {checkAnswer(answer["score"])}))
                      .toList(),
                ],
              );
  }
}
import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final String questionText;

  const Question({super.key, required this.questionText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(top: 50),
        decoration: BoxDecoration(color: Colors.yellow[500]),
        child: Text(questionText, style: const TextStyle(color: Colors.redAccent, fontSize: 24), textAlign: TextAlign.center)
      ),
    );
  }
}
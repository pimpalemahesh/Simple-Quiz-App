import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final VoidCallback selectedOption;
  final String answer;

  const Answer({super.key, required this.answer, required this.selectedOption});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.parse("150"),
      margin: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
        child: Text(answer),
        onPressed: selectedOption,
      ),
    );
  }
}
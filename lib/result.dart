import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final VoidCallback resetQuiz;

  const Result({super.key, this.resultScore = 0, required this.resetQuiz});

  String get resultPhrase{
    var resultText = "";
    if(resultScore < 10){
      resultText = "Very bad Performance!";
    }
    else if(resultScore >= 10 && resultScore < 15){
      resultText = "Good Performance!";
    }
    else if(resultScore >= 15 && resultScore < 25){
      resultText = "Dashing Performance!";
    }
    else{
      resultText = "Excellent Performance!";
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.only(top: 40),
      child: Center(
          child: Column(
            children: [
              Text("Your Score : $resultScore", textAlign: TextAlign.center, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),),
              Text(resultPhrase, textAlign: TextAlign.center,),
              TextButton(onPressed: resetQuiz, child: const Text("Restart Quize", style: TextStyle(color: Colors.blue,),))
            ],
          ),
      ),
    );
  }
}

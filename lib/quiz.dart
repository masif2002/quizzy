import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'start-screen';
  final List<String> selectedAnswers = [];

  void onSelect(String answer) {
    selectedAnswers.add(answer);
  }

  void showQuestions() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void showResultScreen() {
    setState(() {
      activeScreen = 'result-screen';
    });
  }

  void restartQuiz() {
    selectedAnswers.clear();
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = StartScreen(showQuestions);

    if (activeScreen == 'question-screen') {
      currentScreen = QuestionScreen(
        selectAnswer: onSelect,
        showResult: showResultScreen,
      );
    } else if (activeScreen == 'result-screen') {
      currentScreen = ResultScreen(selectedAnswers, restartQuiz);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 24, 154, 180),
                  Color.fromARGB(255, 5, 67, 94),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: currentScreen),
      ),
    );
  }
}

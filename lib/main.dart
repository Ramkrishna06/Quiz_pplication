import 'package:flutter/material.dart';
import 'package:quiz_application/screen/quiz/quiz_screen.dart';
import 'package:quiz_application/screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: WelcomeScreen(),
      //home: QuizScreen(),
    );
  }
}

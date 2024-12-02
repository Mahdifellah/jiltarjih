import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuestionPage(),
    );
  }
}

class QuestionPage extends StatefulWidget {
  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
   String selectedAnswer = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What is your favorite color?',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            buildAnswerOption('Answer 1'),
            buildAnswerOption('Answer 2'),
            buildAnswerOption('Answer 3'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Add your logic to handle the user's answer selection
                // For example, you can check the value of 'selectedAnswer' here.
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildAnswerOption(String answer) {
    return Row(
      children: [
        Radio<String>(
          value: answer,
          groupValue: selectedAnswer,
          onChanged: (value) {
            setState(() {
              selectedAnswer = value!;
            });
          },
        ),
        Text(answer),
      ],
    );
  }
}

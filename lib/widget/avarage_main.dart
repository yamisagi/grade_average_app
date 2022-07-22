import 'package:flutter/material.dart';
import 'package:grade_avarage_app/constants/constants.dart';

class AvarageCalculatorApp extends StatefulWidget {
  const AvarageCalculatorApp({Key? key}) : super(key: key);

  @override
  State<AvarageCalculatorApp> createState() => _AvarageCalculatorAppState();
}

class _AvarageCalculatorAppState extends State<AvarageCalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Constants.appBarText,
        ),
      ),
      body: const Center(
        child: Text('Hello World'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:grade_avarage_app/constants/theme_data.dart';
import 'package:grade_avarage_app/widget/average_main.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProductThemeData product = ProductThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AverageCalculatorApp(),
      theme: product.themeData,
    );
  }
}

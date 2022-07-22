import 'package:flutter/material.dart';
import 'package:grade_avarage_app/constants/constants.dart';

class AverageView extends StatelessWidget {
  final double average;
  final int lessonCount;
  const AverageView({
    Key? key,
    required this.average,
    required this.lessonCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          lessonCount > 0 ? '$lessonCount ders girildi ' : Constants.notEntered,
          style: Constants.lessonTextTheme,
        ),
        Constants.seperatorBox,
        Text(
          average >= 0 ? average.toStringAsFixed(2) : 0.0.toStringAsFixed(2),
          style: Constants.lessonTextTheme.copyWith(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Constants.seperatorBox,
        Constants.averageText,
      ],
    );
  }
}

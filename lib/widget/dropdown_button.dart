import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:grade_avarage_app/constants/constants.dart';

class DropDownView extends StatefulWidget {
  final List<DropdownMenuItem<double>> item;

  const DropDownView({Key? key, required this.item}) : super(key: key);

  @override
  State<DropDownView> createState() => _DropDownViewState();
}

class _DropDownViewState extends State<DropDownView> {
  double? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.regularPadding,
      child: Container(
        padding: Constants.dropdownPadding,
        decoration: BoxDecoration(
          color: Constants.fillColor?.withOpacity(0.5),
          border: Border.all(
            color: Constants.fillColor as Color,
            width: 2,
          ),
          borderRadius: Constants.dropdownRadius,
        ),
        child: DropdownButton<double>(
          alignment: Constants.center,
          hint: Text(
            Constants.dropdownHint,
            style: TextStyle(
              color: Constants.fillColor,
            ),
          ),
          style: Constants.lessonTextTheme,
          underline: const SizedBox(),
          value: _selectedValue,
          items: widget.item,
          onChanged: ((value) {
            setState(() {
              inspect(value);
              _selectedValue = value;
            });
          }),
        ),
      ),
    );
  }
}

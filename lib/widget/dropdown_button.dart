// ignore_for_file: must_be_immutable

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:grade_avarage_app/constants/constants.dart';

class DropDownView extends StatefulWidget {
  List<DropdownMenuItem<double>>? item;
  final String hint;
  double? selectedValue;

  DropDownView({
    Key? key,
    this.item,
    required this.hint,
  }) : super(key: key);

  @override
  State<DropDownView> createState() => DropDownViewState();
}

class DropDownViewState extends State<DropDownView> {
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
            widget.hint,
            style: TextStyle(
              color: Constants.fillColor,
            ),
          ),
          style: Constants.lessonTextTheme,
          underline: const SizedBox(),
          value: widget.selectedValue,
          items: widget.item,
          onChanged: ((value) {
            setState(() {
              inspect(value);
              widget.selectedValue = value;
            });
          }),
        ),
      ),
    );
  }
}

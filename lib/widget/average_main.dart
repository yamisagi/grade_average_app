import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:grade_avarage_app/constants/constants.dart';
import 'package:grade_avarage_app/data/data.dart';
import 'package:grade_avarage_app/model/lesson_model.dart';
import 'package:grade_avarage_app/widget/dropdown_button.dart';
import 'package:grade_avarage_app/widget/show_average.dart';

class AverageCalculatorApp extends StatefulWidget {
  const AverageCalculatorApp({Key? key}) : super(key: key);

  @override
  State<AverageCalculatorApp> createState() => _AverageCalculatorAppState();
}

class _AverageCalculatorAppState extends State<AverageCalculatorApp> {
  final _formKey = GlobalKey<FormState>();
  final DropDownView letter = DropDownView(
    hint: Constants.dropdownHint,
    item: DataHelper.dropdownMenuItems,
  );
  final DropDownView credit = DropDownView(
    hint: Constants.dropDownHintCredit,
    item: DataHelper.dropDownMenuItemCredit,
  );

  String? _selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Constants.appBarText,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.transparent,
                  child: _buildForm(),
                ),
              ),
              Expanded(
                flex: 1,
                child: AverageView(
                  average: DataHelper.calculateAverage(DataHelper.allLessons),
                  lessonCount: DataHelper.allLessons.length,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: const Placeholder(),
            ),
          ),
        ],
      ),
    );
  }

  Form _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildTextFormField(),
          Row(
            children: [
              letter,
              credit,
              Expanded(
                child: IconButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        _formKey.currentState!.save();
                        Lesson lesson = Lesson(
                            lessonCredit: credit.selectedValue ?? 0,
                            lessonLetter: letter.selectedValue ?? 0,
                            lessonName: _selectedValue ?? '');
                        DataHelper.addLesson(lesson);

                        /// Resetting the form
                        _formKey.currentState!.reset();
                        inspect(
                            DataHelper.calculateAverage(DataHelper.allLessons));
                      });
                    }
                  },
                  icon: const Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Padding _buildTextFormField() {
    return Padding(
      padding: Constants.regularPadding,
      child: TextFormField(
        onSaved: (newValue) {
          _selectedValue = newValue;
        },
        validator: ((value) {
          if (value == null || value.isEmpty) {
            return Constants.emptyFieldError;
          }
          return null;
        }),
        decoration: InputDecoration(
          fillColor: Constants.fillColor?.withOpacity(0.5),
          filled: true,
          labelText: 'Ders adı giriniz',
          border: Constants.textFormFieldBorder,
        ),
      ),
    );
  }
}

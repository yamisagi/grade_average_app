import 'package:flutter/material.dart';
import 'package:grade_avarage_app/constants/constants.dart';
import 'package:grade_avarage_app/data/data.dart';
import 'package:grade_avarage_app/widget/show_average.dart';

class AverageCalculatorApp extends StatefulWidget {
  const AverageCalculatorApp({Key? key}) : super(key: key);

  @override
  State<AverageCalculatorApp> createState() => _AverageCalculatorAppState();
}

class _AverageCalculatorAppState extends State<AverageCalculatorApp> {
  double? _selectedValue = 4;
  final _formKey = GlobalKey<FormState>();
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
                const Expanded(
                  flex: 1,
                  child: AverageView(average: 0, lessonCount: 0),
                ),
              ],
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: const Text('Form Widget 2'),
              ),
            ),
          ],
        ));
  }

  Form _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildTextFormField(),
          Row(
            children: [
              _buildPoints(),
            ],
          )
        ],
      ),
    );
  }

  TextFormField _buildTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Constants.fillColor,
        filled: true,
        labelText: 'Enter your name',
        hintText: 'Enter your name',
        border: Constants.textFormFieldBorder,
      ),
    );
  }

  Padding _buildPoints() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: Constants.dropdownPadding,
        decoration: BoxDecoration(
          color: Constants.fillColor as Color,
          border: Border.all(
            color: Constants.fillColor as Color,
            width: 2,
          ),
          borderRadius: Constants.dropdownRadius,
        ),
        child: DropdownButton<double>(
          underline: const SizedBox(),
          value: _selectedValue,
          items: DataHelper.dropdownMenuItems,
          onChanged: ((value) {
            setState(() {
              _selectedValue = value;
            });
          }),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:grade_avarage_app/constants/constants.dart';
import 'package:grade_avarage_app/data/data.dart';
import 'package:grade_avarage_app/widget/dropdown_button.dart';
import 'package:grade_avarage_app/widget/show_average.dart';

class AverageCalculatorApp extends StatefulWidget {
  const AverageCalculatorApp({Key? key}) : super(key: key);

  @override
  State<AverageCalculatorApp> createState() => _AverageCalculatorAppState();
}

class _AverageCalculatorAppState extends State<AverageCalculatorApp> {
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
              DropDownView(
                item: DataHelper.dropdownMenuItems,
              ),
              DropDownView(
                item: DataHelper.dropDownMenuItemCredit,
              )
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

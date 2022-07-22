import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grade_avarage_app/constants/constants.dart';

class ProductThemeData {
  final ThemeData _themeData = ThemeData(
    appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        color: Colors.transparent,
        titleTextStyle: Constants.titleTextTheme),
    useMaterial3: true,
    primarySwatch: Colors.indigo,
  );

  ThemeData get themeData => _themeData;
}

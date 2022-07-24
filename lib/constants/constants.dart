import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  //-----------------STRINGS-----------------//
  static String appName = 'Grade Average App';
  static String appBarText = 'Ortalama Hesaplama';
  static const String notEntered = 'Ders Girilmedi';
  static const dropdownHint = 'Harfler';
  static const dropDownHintCredit = 'Krediler';
  static final averageText = Text('Ortalama', style: lessonTextTheme);
  static const emptyFieldError = 'Ders adı boş olamaz.';
  //-----------------TEXTSTYLES-----------------//
  static final titleTextTheme = GoogleFonts.quicksand(
    textStyle: const TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: Colors.indigo,
    ),
  );
  static final lessonTextTheme = GoogleFonts.quicksand(
    textStyle: const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w700,
      color: Colors.indigo,
    ),
  );
  //-----------------COLORS-----------------//
  static final Color? fillColor = Colors.purple[100];
  static const Color borderColor = Colors.indigo;
  //-----------------RADIUS-----------------//
  static final generalRadius = BorderRadius.circular(25);
  static final dropdownRadius = BorderRadius.circular(10);
  static const dropdownPadding =
      EdgeInsets.symmetric(horizontal: 5, vertical: 5);
  static const regularPadding = EdgeInsets.all(8.0);
  //-----------------BORDER-----------------//
  static final textFormFieldBorder = OutlineInputBorder(
    borderRadius: generalRadius,
    borderSide: const BorderSide(color: borderColor, width: 2),
  );
  static const seperatorBox = SizedBox(height: 5);
  static const center = Alignment.center;
}

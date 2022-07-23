// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:grade_avarage_app/constants/constants.dart';

enum Data {
  AA,
  BA,
  BB,
  CC,
  DC,
  DD,
  FF,
}

extension DataExtension on Data {
  String get value {
    switch (this) {
      case Data.AA:
        return 4.0.toStringAsFixed(2);
      case Data.BA:
        return 3.5.toStringAsFixed(2);
      case Data.BB:
        return 2.5.toStringAsFixed(2);
      case Data.CC:
        return 2.0.toStringAsFixed(2);
      case Data.DC:
        return 1.5.toStringAsFixed(2);
      case Data.DD:
        return 1.0.toStringAsFixed(2);
      case Data.FF:
        return 0.0.toStringAsFixed(2);
      default:
        return 0.0.toStringAsFixed(2);
    }
  }
}

List<double> _listGenerator() {
  return List.generate(
    10,
    (index) => (index + 1),
  );
}

class DataHelper {
  static List<Data> get dataList => [
        Data.AA,
        Data.BA,
        Data.BB,
        Data.CC,
        Data.DC,
        Data.DD,
        Data.FF,
      ];
  static List<DropdownMenuItem<double>> get dropdownMenuItems {
    return dataList.map((data) {
      return DropdownMenuItem<double>(
        alignment: Constants.center,
        value: double.parse(data.value),
        child: Text(data.name),
      );
    }).toList();
  }

  static List<DropdownMenuItem<double>> get dropDownMenuItemCredit {
    return _listGenerator()
        .map(
          (double credit) => DropdownMenuItem<double>(
            alignment: Constants.center,
            value: credit,
            child: Text(
              credit.toStringAsFixed(2),
            ),
          ),
        )
        .toList();
  }
}

import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF6155CC);
const List<Color> _customColorList = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.brown,
  Colors.grey,
  Colors.black,
  Colors.white,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0}): assert(selectedColor >= 0 && selectedColor < _customColorList.length, 'selectedColor must be between 0 and ${_customColorList.length}');
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _customColorList[selectedColor],
    );
  }
}

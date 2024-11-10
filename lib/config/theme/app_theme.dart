import 'package:flutter/material.dart';

const List<Color> _colorsThemes = [
  Colors.green,
  Colors.cyan,
  Color.fromARGB(255, 255, 230, 0),
  Colors.red,
  Colors.pink
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorsThemes.length - 1,
            'El index tiene que ser mayor o igual a 0 y el index tiene que ser menor o igual ${_colorsThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorsThemes[selectedColor]);
  }
}

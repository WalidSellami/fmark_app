import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Varela',
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue.shade700,
    // elevation: 0,
  ),
  colorScheme: const ColorScheme.light(),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Colors.blue.shade700,
        ),
        minimumSize: const MaterialStatePropertyAll(
          Size(100, 40),
        )
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  fontFamily: 'Varela',
  scaffoldBackgroundColor: Colors.grey.shade800.withOpacity(.5),
  appBarTheme: AppBarTheme(
    backgroundColor: HexColor('141414'),
  ),
  colorScheme: const ColorScheme.dark(),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Colors.blueGrey.shade800,
        ),
        minimumSize: const MaterialStatePropertyAll(
          Size(100, 40),
        ),
    ),
  ),
);
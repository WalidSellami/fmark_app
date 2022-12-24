import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Varela',
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.blue.shade700,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.blue.shade700,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  colorScheme: ColorScheme.light(
    primary: Colors.blue.shade700,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Colors.blue.shade700,
        ),
        minimumSize: const MaterialStatePropertyAll(
          Size(100, 40),
        ),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  fontFamily: 'Varela',
  scaffoldBackgroundColor: Colors.grey.shade800.withOpacity(.5),
  appBarTheme: AppBarTheme(
    backgroundColor: HexColor('141414'),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: HexColor('141414'),
      statusBarIconBrightness: Brightness.light,
    ),
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
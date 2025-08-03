import 'package:flutter/material.dart';

class CustomAppBarTheme {
  CustomAppBarTheme._();

  static final AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0.0,
    centerTitle: false,
    scrolledUnderElevation: 0.0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: const IconThemeData(color: Colors.black, size: 24.0),
    actionsIconTheme: const IconThemeData(color: Colors.black, size: 24.0),
    titleTextStyle: const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );

  static final AppBarTheme darkAppBarTheme = AppBarTheme(
    elevation: 0.0,
    centerTitle: false,
    scrolledUnderElevation: 0.0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: const IconThemeData(color: Colors.black, size: 24.0),
    actionsIconTheme: const IconThemeData(color: Colors.white, size: 24.0),
    titleTextStyle: const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );
}

import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color darkSecondry = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
      textTheme: const TextTheme(
        headlineSmall: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 25, color: Colors.black),
        titleMedium: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 25, color: Colors.black),
        bodyMedium: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 20, color: Colors.black),
      ),
      cardTheme: CardTheme(
          color: Colors.white,
          surfaceTintColor: Colors.white,
          elevation: 18,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(size: 32),
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          )),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFB7935F),
          primary: Color(0xFFB7935F),
          onPrimary: Colors.white,
          secondary: Color(0x91B7935F),
          onSecondary: Colors.black,
          background: Colors.white),
      useMaterial3: true,
      dividerColor: lightPrimary,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white,
      ));
  static ThemeData darkTheme = ThemeData(
      textTheme: const TextTheme(
        headlineSmall: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 25, color: Colors.white),
        titleMedium: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 25, color: Colors.white),
        bodyMedium: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 20, color: Colors.white),
      ),
      cardTheme: CardTheme(
          color: darkPrimary,
          surfaceTintColor: Colors.transparent,
          elevation: 18,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          )),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: darkSecondry,
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(size: 32),
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          )),
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: ColorScheme.fromSeed(
          seedColor: darkPrimary,
          primary: darkPrimary,
          onPrimary: Colors.white,
          secondary: darkSecondry,
          onSecondary: Colors.white,
          background: darkPrimary),
      useMaterial3: true,
      dividerColor: darkSecondry,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkPrimary,
      ));
}

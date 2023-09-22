import 'package:flutter/material.dart';
import 'package:islami/ui/HadethDetails/Hadeth_Details_Screen.dart';
import 'package:islami/ui/chapter_details/chapter_details_screen.dart';
import 'package:islami/ui/homescreen/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'islami',
      theme: ThemeData(
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
        ),
        useMaterial3: true,
      ),
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        ChapterDetailsScreen.routeName: (buildContext) =>
            ChapterDetailsScreen(),
        HadethDetailsScreen.routeName: (buildContext) => HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

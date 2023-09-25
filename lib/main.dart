import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/provider/SettingsProvider.dart';
import 'package:islami/ui/HadethDetails/Hadeth_Details_Screen.dart';
import 'package:islami/ui/MyThemeData.dart';
import 'package:islami/ui/chapter_details/chapter_details_screen.dart';
import 'package:islami/ui/homescreen/HomeScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext) => SettingsProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      title: 'islami',
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: settingsProvider.currentTheme,
      routes: {
        HomeScreen.routeName: (buildContext) => HomeScreen(),
        ChapterDetailsScreen.routeName: (buildContext) =>
            ChapterDetailsScreen(),
        HadethDetailsScreen.routeName: (buildContext) => HadethDetailsScreen(),
      },
      initialRoute: HomeScreen.routeName,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Spanish
      ],
      locale: Locale(settingsProvider.currentLocale),
    );
  }
}

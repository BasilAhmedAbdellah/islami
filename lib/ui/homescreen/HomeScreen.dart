import 'package:flutter/material.dart';
import 'package:islami/ui/homescreen/hadeth/hadeth_tab.dart';
import 'package:islami/ui/homescreen/quran/quran_tab.dart';
import 'package:islami/ui/homescreen/radio/radio_tab.dart';
import 'package:islami/ui/homescreen/settings/settings_tab.dart';
import 'package:islami/ui/homescreen/tasbeeh/tasbeeh_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedtabsindex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background_all.png'),
                fit: BoxFit.fill)),
        child: Scaffold(
          appBar: AppBar(
            title: Text('islami'),
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                selectedtabsindex = index;
              });
            },
            currentIndex: selectedtabsindex,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                  label: 'Quran'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                  label: 'Tasbeh'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                  label: 'Hadeeth'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                  label: 'Radio'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(Icons.settings),
                  label: 'Settings'),
            ],
          ),
          body: tabs[selectedtabsindex],
        ));
  }

  List<Widget> tabs = [
    QuranTab(),
    TasbeehTab(),
    HadethTab(),
    RadioTab(),
    SettingsTab(),
  ];
}

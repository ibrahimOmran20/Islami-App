import 'package:contact_screen/home/Hadeth/Hadeth%20tab.dart';
import 'package:contact_screen/home/Quran/Quran%20tab.dart';
import 'package:contact_screen/home/RadioTab.dart';
import 'package:contact_screen/home/Settings/Settings%20tab.dart';
import 'package:contact_screen/home/Tasbeh/TasbehTab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home Screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'body_sebha_logo.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title:
                  Text('Islami', style: Theme.of(context).textTheme.headline2)),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('icon_quran.png')),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('icon_hadeth.png')),
                    label: AppLocalizations.of(context)!.hadeth),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('icon_sebha.png')),
                    label: AppLocalizations.of(context)!.tasbeh),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('icon_radio.png')),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.setting),
              ],
            ),
          ),
          body: tabs[selectedIndex],
        )
      ],
    );
  }
}

List<Widget> tabs = [
  QuranTab(),
  HadethTab(),
  TasbehTab(),
  RadioTab(),
  SettingsTab()
];

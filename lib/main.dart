import 'package:contact_screen/App_Confgi_Provider/app_config_provider.dart';
import 'package:contact_screen/HomeScreen.dart';
import 'package:contact_screen/home/Hadeth/Hadeth%20Details.dart';
import 'package:contact_screen/home/Quran/SuraDetailes.dart';
import 'package:contact_screen/myTheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: (MyApp())));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailes.routeName: (context) => SuraDetailes(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
      initialRoute: HomeScreen.routeName,
      
      theme: MyThemeData.LightTheme,
      darkTheme: MyThemeData.DarkTheme,
      themeMode: ThemeMode.system,

      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
    );
  }
}

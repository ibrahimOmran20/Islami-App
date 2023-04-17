import 'package:contact_screen/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {HomeScreen.routeName: (context) => HomeScreen()},
        initialRoute: HomeScreen.routeName
    );
  }

}
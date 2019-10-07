import 'package:flutter/material.dart';

//PAGE
import 'package:preference_user_app/src/pages/home_page.dart';
import 'package:preference_user_app/src/pages/setting_page.dart';
 
void main() => runApp(PreferenceUser());
 
class PreferenceUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias App',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName     : (BuildContext context) => HomePage(),
        SettingPage.routeName  : (BuildContext context) => SettingPage(),
      },
    );
  }
}
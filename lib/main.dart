import 'package:flutter/material.dart';

//PAGE
import 'package:preference_user_app/src/pages/home_page.dart';
import 'package:preference_user_app/src/pages/setting_page.dart';

import 'package:preference_user_app/src/shared_prefs/preferences_user.dart';
 
void main() async {
  final prefs = new PreferencesUser();
  await prefs.initPrefs();

  runApp(PreferenceUser());
}
 
class PreferenceUser extends StatelessWidget {

  final prefs = new PreferencesUser();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias App',
      initialRoute: prefs.page,
      routes: {
        HomePage.routeName     : (BuildContext context) => HomePage(),
        SettingPage.routeName  : (BuildContext context) => SettingPage(),
      },
    );
  }
}
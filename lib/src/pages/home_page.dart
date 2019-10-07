import 'package:flutter/material.dart';

import 'package:preference_user_app/src/shared_prefs/preferences_user.dart';
// import 'package:preference_user_app/src/pages/setting_page.dart';

//WIDGETS
import 'package:preference_user_app/src/widgets/drawer_widget.dart';

class HomePage extends StatelessWidget {
  
  static final String routeName = 'home';
  final prefs = new PreferencesUser();

  @override
  Widget build(BuildContext context) {

    prefs.page = HomePage.routeName;

    return Scaffold(
      appBar: AppBar(
        title: Text('Preferences User'),
        backgroundColor: (prefs.color) ? Colors.teal : Colors.blue,
      ),
      //drawer: _createDrawer(context),
      drawer: DrawerWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color: ${ prefs.color ? 'Secondary' : 'Primary' }'),
          Divider(),
          Text('Gender: ${ prefs.gender == 1 ? 'Masculino' : 'Femenino' }'),
          Divider(),
          Text('Name user: ${ prefs.name }'),
          Divider(),
        ],
      ),
    );
  }

  // Widget _createDrawer(BuildContext context) {

  //   return Drawer(
  //     child: ListView(
  //       padding: EdgeInsets.zero,
  //       children: <Widget>[
  //         DrawerHeader(
  //           child: Container(),
  //           decoration: BoxDecoration(
  //             image: DecorationImage(
  //               image: AssetImage('assets/images/menu-img.jpg'),
  //               fit: BoxFit.cover
  //             )
  //           ),
  //         ),

  //         ListTile(
  //           leading: Icon( Icons.pages, color: Colors.blue, ),
  //           title: Text('Home'),
  //           onTap: () => Navigator.pushReplacementNamed(context, HomePage.routeName),
  //         ),

  //         ListTile(
  //           leading: Icon( Icons.party_mode, color: Colors.blue, ),
  //           title: Text('Party Mode'),
  //           onTap: () {},
  //         ),

  //         ListTile(
  //           leading: Icon( Icons.people, color: Colors.blue, ),
  //           title: Text('People'),
  //           onTap: () {},
  //         ),

  //         ListTile(
  //           leading: Icon( Icons.settings, color: Colors.blue, ),
  //           title: Text('Settings'),
  //           onTap: () {
  //             //Navigator.pop(context);
  //             //Navigator.pushNamed(context, SettingPage.routeName);
  //             Navigator.pushReplacementNamed(context, SettingPage.routeName);
  //           }
  //         ),
  //       ],
  //     ),
  //   );

  // }
}
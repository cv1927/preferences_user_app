import 'package:flutter/material.dart';

//PAGES
import 'package:preference_user_app/src/pages/home_page.dart';
import 'package:preference_user_app/src/pages/setting_page.dart';

class DrawerWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/menu-img.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),

          ListTile(
            leading: Icon( Icons.pages, color: Colors.blue, ),
            title: Text('Home'),
            onTap: () => Navigator.pushReplacementNamed(context, HomePage.routeName),
          ),

          ListTile(
            leading: Icon( Icons.party_mode, color: Colors.blue, ),
            title: Text('Party Mode'),
            onTap: () {},
          ),

          ListTile(
            leading: Icon( Icons.people, color: Colors.blue, ),
            title: Text('People'),
            onTap: () {},
          ),

          ListTile(
            leading: Icon( Icons.settings, color: Colors.blue, ),
            title: Text('Settings'),
            onTap: () {
              //Navigator.pop(context);
              //Navigator.pushNamed(context, SettingPage.routeName);
              Navigator.pushReplacementNamed(context, SettingPage.routeName);
            }
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:preference_user_app/src/shared_prefs/preferences_user.dart';

//WIDGETS
import 'package:preference_user_app/src/widgets/drawer_widget.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class SettingPage extends StatefulWidget {
  
  static final String routeName = 'setting';

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  bool _colorSecondary;
  int _gender;
  String _name;

  TextEditingController _textEditingController;

  final prefs = new PreferencesUser();

  @override
  void initState() {
    super.initState();
    //_loadPref();

    _gender = prefs.gender;
    _name = prefs.name;
    _colorSecondary = prefs.color;
    prefs.page = SettingPage.routeName;

    _textEditingController = new TextEditingController( text: prefs.name );
  }

  // _loadPref() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();

  //   _gender = prefs.getInt("gender");
  //   setState(() {});
  // }

  _setSelectedRadio( int value ) {

    //SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.gender = value;

    _gender = value;
    setState(() {});
    
  }

  _setSwitchList( bool value ) {
    //SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.color = value;

    _colorSecondary = value;
    setState(() {});
  }

  _setTextEdit( String value ) {
    //SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.name = value;

    _name = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      drawer: DrawerWidget(),
      body: ListView(
        children: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: Text('Settings', style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),),
          ),

          Divider(),

          SwitchListTile(
            value: _colorSecondary,
            title: Text('Color Secondary'),
            onChanged: _setSwitchList,
          ),

          RadioListTile(
            value: 1,
            title: Text('Male'),
            groupValue: _gender,
            onChanged: _setSelectedRadio
          ),

          RadioListTile(
            value: 2,
            title: Text('Female'),
            groupValue: _gender,
            onChanged: _setSelectedRadio,
          ),

          Divider(),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(
                labelText: 'Name',
                helperText: 'Name of person using telephone'
              ),
              onChanged: _setTextEdit,
            )
          )
        ],
      )
    );
  }
}
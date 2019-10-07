import 'package:flutter/material.dart';

//WIDGETS
import 'package:preference_user_app/src/widgets/drawer_widget.dart';

class SettingPage extends StatefulWidget {
  
  static final String routeName = 'setting';

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {

  bool _colorSecondary = false;
  int _gender = 1;
  String _name = '';

  TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();

    _textEditingController = new TextEditingController( text: _name );
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
            onChanged: ( value ) {
              setState(() {
               _colorSecondary = value; 
              });
            },
          ),

          RadioListTile(
            value: 1,
            title: Text('Male'),
            groupValue: _gender,
            onChanged: ( value ) {
              setState(() {
                _gender = value;
              });
            },
          ),

          RadioListTile(
            value: 2,
            title: Text('Female'),
            groupValue: _gender,
            onChanged: ( value ) {
              setState(() {
                _gender = value;
              });
            },
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
              onChanged: ( value ) {
                _name = value;
              },
            )
          )
        ],
      )
    );
  }
}
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesUser {

  static final PreferencesUser _instance = new PreferencesUser._internal();

  factory PreferencesUser() {
    return _instance;
  }

  PreferencesUser._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  // GET y SET del genero
  get gender {
    return _prefs.getInt('gender') ?? 1;
  }

  set gender( int value ) {
    _prefs.setInt('gender', value);
  }

  // GET y SET del name
  get name {
    return _prefs.getString('name') ?? '';
  }

  set name( String value ) {
    _prefs.setString('name', value);
  }

  // GET y SET del color
  get color {
    return _prefs.getBool("color") ?? false;
  }

  set color( bool value ) {
    _prefs.setBool('color', value);
  }

  // GET y SET de la ultima pagina
  get page {
    return _prefs.getString("page") ?? 'home';
  }

  set page( String value ) {
    _prefs.setString('page', value);
  }

}
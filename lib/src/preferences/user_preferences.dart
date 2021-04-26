import 'package:shared_preferences/shared_preferences.dart';


class UserPreferences {

  static final UserPreferences _instance = new UserPreferences._internal();

  factory UserPreferences() {
    return _instance;
  }

  UserPreferences._internal();

  SharedPreferences _prefs;

  initPrefs() async {
    this._prefs = await SharedPreferences.getInstance();
  }

  // GET - SET - REMOVE email
  get token {
    return _prefs.getString('token') ?? '';
  }

  set token( String value ) {
    _prefs.setString('token', value);
  }

  removeToken(String value){
    _prefs.remove(value);
  }


  // GET - SET - REMOVE email
  get email {
    return _prefs.getString('email') ?? '';
  }

  set email( String value ) {
    _prefs.setString('email', value);
  }

  removeEmail(String value){
    _prefs.remove(value);
  }

}
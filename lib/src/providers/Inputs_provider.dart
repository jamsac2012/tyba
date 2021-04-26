import 'package:flutter/material.dart';

class InputsProvider with ChangeNotifier {
  
  String _name = '';
  String _email = '';
  String _date = '';
  String _password = '';
  String _gender = '';

  String get name => _name;
  String get email => _email;
  String get date => _date;
  String get password => _password;
  String get gender => _gender;

  void setName(String name){ _name = name; notifyListeners(); }
  void setEmail(String email){ _email = email; notifyListeners(); }
  void setDate(String date){ _date = date; notifyListeners(); }
  void setGender(String gender){ _gender = gender; notifyListeners(); }
  void setPassword(String password){ _password = password; notifyListeners(); }
}
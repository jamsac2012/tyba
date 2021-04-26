
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:tyba/src/preferences/user_preferences.dart';


class FireBaseProvider {

  final String _myFirebaseToken = 'AIzaSyCtgpduHZDZjCUDBC13CpORIptKd4mi0rs';
  final _prefs = new UserPreferences();

  // LOGIN VERIFICATION ON FIREBASE
  Future<Map<String, dynamic>> loginUser(String email, String password) async{
    
    final authData = {
      'email': email,
      'password': password,
      'returnSecureToken': true
    };

    final resp = await http.post(
      Uri.parse('https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$_myFirebaseToken'),
      body: json.encode(authData)
    );

    Map<String, dynamic> decodeResp = jsonDecode(resp.body);
    // print(decodeResp);

    if (decodeResp.containsKey('idToken')) {

      _prefs.token = decodeResp['idToken'];
      return {'ok': true, 'token': decodeResp['idToken']};
    } else {
      return {'ok': false, 'message': decodeResp['error']['message']};
    }

  }

  // REGISTER USERS IN FIREBASE
  Future<Map<String, dynamic>> registerUser(String email, String password) async{
    
    final authData = {
      'email': email,
      'password': password,
      'returnSecureToken': true
    };

    final resp = await http.post(
      Uri.parse('https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$_myFirebaseToken'),
      body: json.encode(authData)
    );

    Map<String, dynamic> decodeResp = jsonDecode(resp.body);
    print(decodeResp);

    if (decodeResp.containsKey('idToken')) {
      _prefs.token = decodeResp['idToken'];
      _prefs.email = email;
      return {'ok': true, 'token': decodeResp['idToken']};
    } else {
      return {'ok': false, 'message': decodeResp['error']['message']};
    }

  }

}
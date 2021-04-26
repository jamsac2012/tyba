
import 'dart:convert';

import 'package:http/http.dart' as http;


class FireBaseProvider {

  final String _myFirebaseToken = 'AIzaSyCtgpduHZDZjCUDBC13CpORIptKd4mi0rs';

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
      return {'ok': true, 'token': decodeResp['idToken']};
    } else {
      return {'ok': false, 'message': decodeResp['error']['message']};
    }

  }

}
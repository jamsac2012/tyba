import 'package:flutter/material.dart';
import 'package:tyba/src/preferences/user_preferences.dart';

class BusinessPage extends StatefulWidget {
  @override
  _BusinessPageState createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bussines'),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 15),
            child: ElevatedButton(
              onPressed:(){
                final prefs = new UserPreferences();
                prefs.removeToken('token');
                Navigator.pushReplacementNamed(context, '/');
              }, 
              child: Icon(Icons.exit_to_app),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green[900]))
            )
          )
        ],
      ),
      body: Text('Business')
    );
  }
}
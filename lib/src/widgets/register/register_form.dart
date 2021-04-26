import 'package:flutter/material.dart';
import 'package:tyba/src/widgets/shared/form_email.dart';
import 'package:tyba/src/widgets/shared/form_password.dart';

import 'register_button.dart';

class RegisterForm extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    // Crear una caja scrolleable
    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
            child: Container(
              height: 180.0
            )),

          Container(
            width: size.width * 0.85,
            padding: EdgeInsets.symmetric( vertical:50.0 ),
            margin: EdgeInsets.symmetric( vertical:30.0 ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                  blurRadius: 3.0,
                  color: Colors.black26,
                  offset: Offset( 0.0, 5.0),
                  spreadRadius: 3.0
                  ) 
              ]
            ),
            child: Column(
              children: [
                Text('Registro', style: TextStyle(fontSize: 20.0),),
                SizedBox(height: 50.0),
                LoginEmail(),
                SizedBox(height: 10.0),
                LoginPassword(),
                SizedBox(height: 20.0),
                LoginButton(),
              ],
            ),),
            TextButton(
              child: Text('Iniciar sesión'),
              onPressed: () => Navigator.pushReplacementNamed(context, '/'),
            ),
            SizedBox(height: 80.0),
        ],
      ),
    );
  }
}
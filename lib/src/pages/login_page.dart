import 'package:flutter/material.dart';
import 'package:tyba/src/widgets/Login/login_background.dart';
import 'package:tyba/src/widgets/Login/login_form.dart';



class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          LoginBackground(),
          LoginForm()
        ],
      )
    );

  }

}
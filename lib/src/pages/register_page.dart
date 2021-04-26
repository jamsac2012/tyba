import 'package:flutter/material.dart';
import 'package:tyba/src/widgets/shared/form_background.dart';
import 'package:tyba/src/widgets/register/register_form.dart';



class RegisterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          LoginBackground(),
          RegisterForm()
        ],
      )
    );

  }

}
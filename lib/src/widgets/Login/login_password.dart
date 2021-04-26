import 'package:flutter/material.dart';
import 'package:tyba/src/bloc/provider.dart';

class LoginPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final bloc = Provider.of(context);

    return StreamBuilder(
      stream: bloc.passwordStream ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              icon: Icon(Icons.lock_outline, color: Colors.deepPurple[900],),
              labelText: 'Contraseña',
              // counterText: snapshot.data,
              errorText: snapshot.error
            ),
            onChanged: bloc.changePassword
          ),
        );
      },
    );
  }
}
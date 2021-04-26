import 'package:flutter/material.dart';
import 'package:tyba/src/bloc/login_bloc.dart';
import 'package:tyba/src/bloc/provider.dart' as providerValidation;
import 'package:tyba/src/providers/firebase_provider.dart';

class LoginButton extends StatelessWidget {

  final firebaseProvider = FireBaseProvider();

  @override
  Widget build(BuildContext context) {

    final bloc = providerValidation.Provider.of(context);

    return StreamBuilder(
      stream: bloc.formValidStream ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return ElevatedButton(
          child: Text('Ingresar'),
          style: ElevatedButton.styleFrom(
            primary: Colors.deepPurple[900],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0) ),
              padding: EdgeInsets.symmetric(horizontal: 120.0, vertical: 10.0)),
          onPressed: snapshot.hasData ? () => _login(context, bloc ) : null
        );
      },
    );
  }

  _login(BuildContext context, LoginBloc bloc) async{
    print('========================');
    print('Email: ${bloc.email}');
    print('Password: ${bloc.password}');
    print('========================');

    Map result = await firebaseProvider.loginUser(bloc.email, bloc.password);

    if (result['ok']) {
        Navigator.pushReplacementNamed(context, 'list');
    }else{
       print(result['message']);
       final snackBar = SnackBar(
            content: Text('Esta ingresando datos incorrectos, por favor reintentelo nuevamente'),
            backgroundColor: Colors.red,
            elevation: 10.0 ,
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

  }
}
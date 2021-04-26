import 'package:flutter/material.dart';
import 'package:tyba/src/bloc/provider.dart';

class LoginEmail extends StatelessWidget {


  @override
  Widget build(BuildContext context, ) {
  
  final bloc = Provider.of(context);
  
    return StreamBuilder(
      stream: bloc.emailStream ,
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: Icon(Icons.alternate_email_outlined, color: Colors.deepPurple[900],),
              hintText: 'ejemplo@correo.com',
              labelText: 'Correo electrónico',
              counterText: snapshot.data,
              errorText: snapshot.error
            ),
            onChanged: (value){ bloc.changeEmail(value); },
          ),
        );
      },
    );
  }
}
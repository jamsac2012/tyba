import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;

    final topOfBackgraound =  Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff073a32),
            Color(0xff1e8c72),
          ]
        )
      ),
    );

    final circle = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Colors.teal
      ),
    );

    return Stack(
      children: [
        topOfBackgraound,
        Positioned(bottom: -30.0, right: 10.0, child:circle ), 
        Positioned(top: -40.0, left: -30.0, child:circle ), 
        Positioned(top: 40.0, right: -30.0, child:circle ), 
        Positioned(top: 90.0, left: 30.0, child:circle ),

        Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
              Icon( Icons.person_pin_circle, color: Colors.white, size: 100.0),
              SizedBox( height: 10.0, width: double.infinity),
              Text('Tyba', style: TextStyle(color: Colors.white, fontSize: 25.0),)
            ],
          ),)
      ],
    );
  }
}
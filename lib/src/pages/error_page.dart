import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Error de Navegación', style: TextStyle (fontSize: 30, fontWeight: FontWeight.bold) ),
            SizedBox(height: 30.0),
            Text('Esta página no existe')
          ],
        ),
      ),
    );
  }
}
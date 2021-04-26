import 'package:flutter/material.dart';
import 'package:tyba/src/pages/business_page.dart';
import 'package:tyba/src/pages/error_page.dart';
import 'package:tyba/src/pages/login_page.dart';
import 'package:tyba/src/pages/register_page.dart';

// Import Widgets


Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder >{
    '/'                   : (context) => LoginPage(),
    'register'            : (context) => RegisterPage(),
    'business'            : (context) => BusinessPage(),
    'error'               : (context) => ErrorPage(),
  };

}
import 'package:flutter/material.dart';
import 'package:tyba/src/pages/error_page.dart';
import 'package:tyba/src/pages/login_page.dart';

// Import Widgets


Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder >{
    '/'                   : (context) => LoginPage(),
    'error'               : (context) => ErrorPage(),
  };

}
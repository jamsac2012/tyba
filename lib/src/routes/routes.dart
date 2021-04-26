import 'package:flutter/material.dart';
import 'package:tyba/src/pages/error_page.dart';
import 'package:tyba/src/pages/home_page.dart';

// Import Widgets


Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder >{
    '/'                   : (context) => HomePage(),
    'error'               : (context) => ErrorPage(),
  };

}
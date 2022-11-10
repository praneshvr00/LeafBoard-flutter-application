// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:leafboard/pages/signin_login_page.dart';
import 'package:leafboard/pages/startuppage.dart';
import 'package:leafboard/pages/basic_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leafboard',
      home: startUpPage(),
      routes: <String, WidgetBuilder>{
        "/signLoginpage": (BuildContext context) => new signLogin(),
        "/startUpPage": (BuildContext context) => new startUpPage(),
        "/basicProfile": (BuildContext context) => new basicProfile(),
      },
    );
  }
}
// Scaffold(
//         body: Container(
//           child: Container(
//             child: Image.asset('images/startscreen.png'),
//           ),
//         ),
//       ),
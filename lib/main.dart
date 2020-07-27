import 'package:UniQ/views/EnterMobile.dart';
import 'package:UniQ/views/Signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UniQ',
      home: SignUp(),
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}

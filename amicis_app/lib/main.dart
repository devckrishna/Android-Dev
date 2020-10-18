import 'package:amicis_app/Screens/Feed_screen.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool isLoggedIn=false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FeedScreen()
    );
  }
}
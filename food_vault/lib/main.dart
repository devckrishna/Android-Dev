import 'package:flutter/material.dart';
import 'package:food_vault/screens/home_scree.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomeScreen()
    );
  }
}

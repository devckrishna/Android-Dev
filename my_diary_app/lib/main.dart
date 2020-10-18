import 'package:flutter/material.dart';
import 'package:my_diary_app/Screens/addactivity_screen.dart';
import 'package:my_diary_app/Screens/addmain_screen.dart';
import 'package:my_diary_app/Screens/content_screen.dart';
import 'package:my_diary_app/Screens/home_screen.dart';
import 'package:my_diary_app/providers/story_provider.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: StoryPro(),
      child: MaterialApp(
        home: HomeScreen(),
        routes: {
          AddMainScreen.routeName:(ctx)=>AddMainScreen(),
          AddActivityScreen.routeName:(ctx)=>AddActivityScreen(),
          ContentScreen.routeName:(ctx)=>ContentScreen()
        },  
      ),
    );
  }
}

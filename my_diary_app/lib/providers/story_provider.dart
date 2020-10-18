import 'package:flutter/material.dart';
import "../models/story_model.dart";

class StoryPro with ChangeNotifier {
  List<Story> _items = [
   Story(content: null, title: null, date: null, feeling: null, activity: null)
  ];

  List<Story> get items {
    return [..._items];
  }

  void addStory(String content, String title, DateTime date, String feeling,
      List activity) {
    final newStory = Story(
        activity: activity,
        title: title,
        content: content,
        date: date,
        feeling: feeling);

    _items.add(newStory);
    notifyListeners();
  }
}

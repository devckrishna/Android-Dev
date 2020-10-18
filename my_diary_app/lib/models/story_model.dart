import 'package:flutter/material.dart';

class Story {
  final String content;
  final String title;
  final DateTime date;
  final String feeling;
  final List activity;

  Story(
      {@required this.content,
      @required this.title,
      @required this.date,
      @required this.feeling,
      @required this.activity});
}

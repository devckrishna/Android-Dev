import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class StoryTile extends StatelessWidget {
  final String content;
  final String title;
  final DateTime date;
  final String feeling;
  final List activity;
  StoryTile({this.content, this.title, this.date, this.feeling, this.activity});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
          width: 300,
          height: 150,
          // color: Colors.red,
          margin: EdgeInsets.only(bottom: 5, top: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20)),
              color: Colors.white,
              boxShadow: [BoxShadow(color: Colors.grey[350], blurRadius: 30)]),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  "$title",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1),
                ),
              ),
              Container(
                height: 60,
                
                child: Text(
                  "$content",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1),
                ),
              ),
              Text(
                "${DateFormat.jm().format(date)}",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 2),
              ),
            ]),
          )),
    );
  }
}

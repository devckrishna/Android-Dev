import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Stories",
                style:
                    GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.w900),
              ),
              Icon(Icons.more_horiz)
            ],
          ),
        ),
        Container(
          height: 90,
          // decoration: BoxDecoration(color: Colors.red),
          width: double.infinity,
          child: ListView.builder(
            itemCount: 9,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              return Container(
                padding: EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/images/feedback.jpg"),
                  
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

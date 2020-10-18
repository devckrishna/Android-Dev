import 'package:amicis_app/widgets/mainDraer.dart';
import 'package:flutter/material.dart';
import './mainFeed_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


class FeedScreen extends StatefulWidget {
  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [Color(0xff2D0E47), Color(0xff09040B)])),
      child: Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          title: Text(
            "Amicis",
            style: GoogleFonts.lato(
              fontSize: 23,
            ),
          ),
          backgroundColor: Colors.transparent,
          toolbarHeight: 80,
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Icon(Icons.message),
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        body: MainFeed(),
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          height: 65,
          items: <Widget>[
            Icon(Icons.home),
            Icon(Icons.search),
            ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                    color: Colors.green,
                    child: Icon(Icons.add, color: Colors.white,size: 40,))),
            Icon(Icons.hearing),
            Icon(Icons.hearing),
          ],
          animationDuration: Duration(milliseconds: 300),
          index: 2,
          // animationCurve: Curves.bounceInOuto
          onTap: (index) {
            print(index);
          },
        ),
      ),
    );
  }
}


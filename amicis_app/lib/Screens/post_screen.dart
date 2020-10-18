import 'package:flutter/material.dart';
import '../models//Post.dart';
import '../widgets/single_post.dart';
import 'package:google_fonts/google_fonts.dart';

class PostScreen extends StatelessWidget{
  final int postId;
  PostScreen(this.postId);

  @override
  Widget build(BuildContext context) {
    final Post post=posts[postId];

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [Color(0xff2D0E47), Color(0xff09040B)])),
      child: Scaffold(
        appBar: AppBar(
          
          title: Text(
            post.name,
            style: GoogleFonts.lato(
              fontSize: 23,
            ),
          ),
          backgroundColor: Colors.transparent,
          toolbarHeight: 55,
          centerTitle: true,
          // actions: [
          //   Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          //     child: Icon(Icons.message),
          //   )
          // ],
        ),
        backgroundColor: Colors.transparent,
        body:SinglePost(post: post)
      ),
    );
  }
}


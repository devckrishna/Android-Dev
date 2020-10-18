import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/Post.dart';

class PostCard extends StatefulWidget {
  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.65,
      // color: Colors.red,
      child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: 460,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Container(
                      width: double.infinity,
                      color: Color(0xffF3F3F3),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                      child: Text(
                        posts[index].name,
                        style: GoogleFonts.lato(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  ClipRect(
                    child: Container(
                      height: 350,
                      padding: EdgeInsets.only(top: 5, bottom: 15),
                      child: Align(
                        alignment: Alignment.center,
                        // widthFactor: 1,
                        heightFactor: 1,
                        child: Image.network(posts[index].photo),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.favorite,
                          size: 35,
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.comment,
                          size: 35,
                        ),
                        Icon(
                          Icons.share,
                          size: 35,
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}

import 'package:amicis_app/widgets/comments.dart';
import 'package:flutter/material.dart';
import '../models//Post.dart';
import 'package:google_fonts/google_fonts.dart';

class SinglePost extends StatelessWidget {
  const SinglePost({
    Key key,
    @required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15))),
        // margin:EdgeInsets.only(top:120),
        padding: EdgeInsets.only(top: 20),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          children: [
            Container(
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
              height: 470,
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
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: NetworkImage(post.photo),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              post.name,
                              style: GoogleFonts.lato(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
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
                        child: Image.network(post.photo),
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
                          size: 30,
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.comment,
                          size: 30,
                        ),
                        Icon(
                          Icons.share,
                          size: 30,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width*0.95,
              padding: EdgeInsets.symmetric(vertical:0),
              child: Comments(post.comment),
            )
          ],
        ),
    );
  }
}
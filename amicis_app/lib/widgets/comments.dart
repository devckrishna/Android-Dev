import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Comments extends StatelessWidget {
  final String comment;
  Comments(this.comment);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:CircleAvatar(
      
      ),
      title:Text("User1",style: GoogleFonts.lato(
        fontSize: 13.5,
        fontWeight: FontWeight.bold
      ),) ,
      subtitle: Text(comment,style: GoogleFonts.lato(
        fontSize: 15
      ),),
    );
  }
}
import 'package:flutter/material.dart';

class ActivityTile extends StatefulWidget {
  final String imageUrl;
  final String title;
  final Function selectActivity;
  ActivityTile(this.imageUrl,this.title,this.selectActivity);

  @override
  _ActivityTileState createState() => _ActivityTileState();
}

class _ActivityTileState extends State<ActivityTile> {
  Color colMain = Colors.transparent;
  Color colSecond = Colors.white;
  int pressed=0;
  int rad=0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
            if (colMain == Colors.transparent) {
              colMain = Colors.white;
              colSecond = Colors.deepPurple;
            } else {
              colMain = Colors.transparent;
              colSecond = Colors.white;
            }if(pressed==0){
              widget.selectActivity(widget.title);
              pressed=1;
            }else{
              widget.selectActivity("eee");
              pressed=0;
            }
            
        });
      },
      child: Container(
        decoration: BoxDecoration(color: colMain,
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        padding: EdgeInsets.all(2),
        height: 120,
        width: 120,
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              "${widget.imageUrl}",
              height: 66,
              color: colSecond,
            ),
            Text(
              "${widget.title}",
              overflow:TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 1,
                  color: colSecond,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

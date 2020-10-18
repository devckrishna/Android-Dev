import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_diary_app/Screens/addactivity_screen.dart';

class AddMainScreen extends StatefulWidget {
  static const routeName = '/addmain';

  @override
  _AddMainScreenState createState() => _AddMainScreenState();
}

class _AddMainScreenState extends State<AddMainScreen> {
  double rating = 0.0;
  String feeling = "";

  String showFeelEmoji() {
    if (rating == 0.0) {
      return "assets/images/terrible.gif";
    } else if (rating == 0.2) {
      return "assets/images/bad.gif";
    } else if (rating == 0.4) {
      return "assets/images/okay.gif";
    } else if (rating == 0.6) {
      return "assets/images/good.gif";
    } else if (rating == 0.8) {
      return "assets/images/reallygood.gif";
    } else if (rating == 1.0) {
      return "assets/images/awesome.gif";
    }
  }

  String showFeeling() {
    if (rating == 0.0) {
      feeling = "Terrible";
      return "Terrible";
    } else if (rating == 0.2) {
      feeling = "Bad";
      return "Bad";
    } else if (rating == 0.4) {
      feeling = "Okay";
      return "Okay";
    } else if (rating == 0.6) {
      feeling = "Good";
      return "Good";
    } else if (rating == 0.8) {
      feeling = "Really Good";
      return "Really good";
    } else if (rating == 1.0) {
      feeling = "Awesome";
      return "Awesome";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Hexcolor("#442A3F"),
        body: Stack(children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.93,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Hexcolor("9D6AF2"), Hexcolor("8642F7")]),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 23, top: 20),
                        child: IconButton(
                            color: Colors.white,
                            iconSize: 35,
                            icon: Icon(Icons.arrow_back),
                            onPressed: () => Navigator.pop(context)),
                      )
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Image.asset(
                      "assets/images/giphy.gif",
                      height: 100,
                      width: 150,
                      fit: BoxFit.cover,
                      color: Colors.white,
                    )
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Hey, How Are You Feeling",
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.4),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Padding(
                          padding: const EdgeInsets.only(top:18.0),
                          child: Image.asset(showFeelEmoji(),height: 150,width:150,),
                        )],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Text(
                              showFeeling(),
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Hexcolor("6924DA"),
                            inactiveTrackColor: Hexcolor("B992F8"),
                            trackShape: RectangularSliderTrackShape(),
                            trackHeight: 10.0,
                            thumbColor: Colors.white,
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 12.0),
                            overlayColor: Colors.deepPurpleAccent[100],
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 28.0),
                          ),
                          child: Slider(
                              divisions: 5,
                              value: rating,
                              onChanged: (newRating) {
                                print(rating);
                                setState(() {
                                  rating = newRating;
                                });
                              }),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:40.0,vertical: 70),
                      child: RaisedButton(onPressed: ()=>Navigator.pushNamed(context, AddActivityScreen.routeName,arguments: feeling),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25))
                      ),
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(vertical:20,horizontal: 40),
                      child: Text("Next",style: TextStyle(
                        fontSize: 15,
                        letterSpacing: 1
                      ),),),
                    ),
                    
                  ],)
                ],
              ),
            ),
          )
        ]));
  }
}

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_diary_app/Screens/content_screen.dart';
import 'package:my_diary_app/widgets/activity_tiles.dart';

class AddActivityScreen extends StatefulWidget {
  static const routeName = "/addactivity";

  @override
  _AddActivityScreenState createState() => _AddActivityScreenState();
}

class _AddActivityScreenState extends State<AddActivityScreen> {
  Color colMain = Colors.transparent;
  Color colSecond = Colors.white;
  List _selectedActivity = [];

  void setActivity(String act) {
    setState(() {
      if (!_selectedActivity.contains(act)) {
        _selectedActivity.add(act);
      }
      if (act == "eee") {
        _selectedActivity.removeLast();
      }
      print(_selectedActivity);
    });
  }

  @override
  Widget build(BuildContext context) {
    final String feeling = ModalRoute.of(context).settings.arguments;
    print(feeling);
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
                      ),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Image.asset(
                      "assets/images/giphy.gif",
                      height: 40,
                      width: 150,
                      fit: BoxFit.cover,
                      color: Colors.white,
                    )
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12.0, vertical: 25),
                        child: Text(
                          "What's making your day so great",
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.4),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ActivityTile(
                            "assets/images/work.png", "Work", setActivity),
                        ActivityTile(
                            "assets/images/family.png", "Family", setActivity),
                        ActivityTile(
                            "assets/images/trust.png", "Friends", setActivity),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ActivityTile(
                            "assets/images/school.png", "School", setActivity),
                        ActivityTile("assets/images/relationship.png",
                            "Relationship", setActivity),
                        ActivityTile(
                            "assets/images/plane.png", "Travel", setActivity),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ActivityTile(
                            "assets/images/gym.png", "Excercise", setActivity),
                        ActivityTile(
                            "assets/images/food.png", "Food", setActivity),
                        ActivityTile("assets/images/wellness.png", "Health",
                            setActivity),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RaisedButton(
                          onPressed: () => Navigator.pushNamed(
                              context, ContentScreen.routeName,
                              arguments: {"feeling":feeling,"activity": _selectedActivity}),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25))),
                          color: Colors.white,
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          child: Text(
                            "Next",
                            style: TextStyle(fontSize: 15, letterSpacing: 1),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ]));
  }
}

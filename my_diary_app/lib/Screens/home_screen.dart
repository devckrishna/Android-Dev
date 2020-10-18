import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:my_diary_app/Screens/addmain_screen.dart';
import 'package:my_diary_app/widgets/story_tiles.dart';
import '../providers/story_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _index = 0;

  void pageHandler(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * 0.92,
          child: Consumer<StoryPro>(
            builder: (ctx, storyItems, _) => ListView.builder(
                itemCount: storyItems.items.length,
                itemBuilder: (ctx, index) {
                  return index == 0
                      ? Column(
                        children: [
                          Container(
                              height: MediaQuery.of(context).size.height * 0.325,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurpleAccent[100],
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(60),
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 70, bottom: 70, left: 20, right: 30),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                   
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "How's It Go'in",
                                          style: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                              letterSpacing: 1),
                                        ),
                                        Text(
                                          "Ross",
                                          style: TextStyle(
                                              fontSize: 40,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                              letterSpacing: 1),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),
                            Container(
                              margin: EdgeInsets.only(top:50),
                              child: Column(
                                children: [
                                  Image.asset("assets/images/giphy.gif",height: 100,),
                                  Text("Add Something....",style: TextStyle(letterSpacing: 3, fontSize: 30),),
                                ],
                              ),)
                        ],
                      )
                      : StoryTile(
                          title: storyItems.items[index].title,
                          content: storyItems.items[index].content,
                          feeling: storyItems.items[index].feeling,
                          date: storyItems.items[index].date,
                          activity: storyItems.items[index].activity,
                        );
                }),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context,AddMainScreen.routeName),
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurpleAccent[200],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BubbleBottomBar(
        hasNotch: true,
        fabLocation: BubbleBottomBarFabLocation.end,
        opacity: .2,
        currentIndex: _index,
        onTap: pageHandler,
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(
                16)), //border radius doesn't work when the notch is enabled.
        elevation: 8,
        items: <BubbleBottomBarItem>[
          BubbleBottomBarItem(
              backgroundColor: Colors.red,
              icon: Icon(
                Icons.dashboard,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.dashboard,
                color: Colors.red,
              ),
              title: Text("Home")),
          BubbleBottomBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(
                Icons.favorite,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.favorite,
                color: Colors.deepPurple,
              ),
              title: Text("Logs")),
          BubbleBottomBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(
                Icons.drag_handle,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.drag_handle,
                color: Colors.indigo,
              ),
              title: Text("Motivation")),
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              activeIcon: Icon(
                Icons.menu,
                color: Colors.green,
              ),
              title: Text("Profile"))
        ],
      ),
    );
  }
}

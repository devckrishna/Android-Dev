import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            leading: InkWell(
              onTap: ()=>Navigator.of(context).pop(),
              child: Icon(Icons.arrow_back),),
            backgroundColor: Color(0xff2D0E47),
            toolbarHeight: 50,
          ),
          ListTile(
            title: Text("Account Settings"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Display Settings"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Saved"),
            onTap: () {},
          ),
          ListTile(
            title: Text("Log Out"),
            onTap: () {},
          ),
          ListTile(
            title: Text("About Us"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

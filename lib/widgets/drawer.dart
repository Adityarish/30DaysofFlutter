import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue.shade100,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue.shade200),
                margin: EdgeInsets.zero,
                accountName: Text("Gita Singh"),
                accountEmail: Text("gita.singh@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/gita.png",
                  ), // we can fetch from online using NetworkImage(url)
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.black),
                textScaler: TextScaler.linear(1.2),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.black),
                textScaler: TextScaler.linear(1.2),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.settings),
              title: Text(
                "Settings",
                style: TextStyle(color: Colors.black),
                textScaler: TextScaler.linear(1.2),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.info),
              title: Text(
                "About",
                style: TextStyle(color: Colors.black),
                textScaler: TextScaler.linear(1.2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

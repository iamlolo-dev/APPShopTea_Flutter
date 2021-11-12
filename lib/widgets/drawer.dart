import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl = "https://avatars.githubusercontent.com/u/43931043?v=4";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: context.canvasColor,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: context.canvasColor),
                accountName: Text(
                  "Sumit",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text("sumit.k9887@gmail.com",
                    style: TextStyle(color: Colors.black)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_box,
                color: Colors.green.shade500,
              ),
              title: Text(
                "Account",
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.mail,
                color: Colors.green.shade500,
              ),
              title: Text(
                "Mail",
                style: TextStyle(color: Colors.black),
              ),
            ),
            MaterialButton(
              color: Colors.green.shade300,
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.timerRoute);
              },
              child: Text("Timer"),
            ),
          ],
        ),
      ),
    );
  }
}

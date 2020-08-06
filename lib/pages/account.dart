import 'package:flutter/material.dart';
import 'package:mezza_flix/drawer/main_drawer.dart';

class UserAccountPage extends StatefulWidget {
  @override
  _UserAccountPageState createState() => _UserAccountPageState();
}

class _UserAccountPageState extends State<UserAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Account Details"),
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text("User Account Details",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),),
      ),
    );
  }
}

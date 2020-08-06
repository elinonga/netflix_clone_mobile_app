import 'package:flutter/material.dart';
import 'package:mezza_flix/drawer/main_drawer.dart';

class ComingUpPage extends StatefulWidget {
  @override
  _ComingUpPageState createState() => _ComingUpPageState();
}

class _ComingUpPageState extends State<ComingUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies - Coming Soon..."),
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text("Movies - Coming Soon...",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),),
      ),
    );
  }
}

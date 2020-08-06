import 'package:flutter/material.dart';
import 'package:mezza_flix/drawer/main_drawer.dart';

class DownloadsPage extends StatefulWidget {
  @override
  _DownloadsPageState createState() => _DownloadsPageState();
}

class _DownloadsPageState extends State<DownloadsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Downloads",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),),
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text("My Downloads"),
      ),
    );
  }
}

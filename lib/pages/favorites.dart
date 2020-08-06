import 'package:flutter/material.dart';
import 'package:mezza_flix/drawer/main_drawer.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Favorites",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),),
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Text("My Favorites"),
      ),
    );
  }
}

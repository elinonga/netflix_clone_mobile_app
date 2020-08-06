import 'package:flutter/material.dart';
import 'package:mezza_flix/drawer/main_drawer.dart';
import 'package:mezza_flix/model/snema.dart';


class TrendingMoviesDetails extends StatefulWidget {

  final Snema snema;

  TrendingMoviesDetails(this.snema);


  @override
  _TrendingMoviesDetailsState createState() => _TrendingMoviesDetailsState();
}

class _TrendingMoviesDetailsState extends State<TrendingMoviesDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trending Details"),
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      backgroundColor: Colors.white,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mezza_flix/drawer/circular_clipper.dart';
import 'package:mezza_flix/drawer/main_drawer.dart';
import 'package:mezza_flix/model/cinema.dart';


class TopDownloadsDetails extends StatefulWidget {

  final Cinema cinema;

  TopDownloadsDetails(this.cinema);


  @override
  _TopDownloadsDetailsState createState() => _TopDownloadsDetailsState();
}

class _TopDownloadsDetailsState extends State<TopDownloadsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Details"),
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                transform: Matrix4.translationValues(0.0, -50.0, 0.0),
                child: Hero(
                  tag: widget.cinema.poster,
                  child: ClipPath(
                    clipper: CircularClipper(),
                    child: Image(
                        height: 400.0,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.cinema.poster)),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

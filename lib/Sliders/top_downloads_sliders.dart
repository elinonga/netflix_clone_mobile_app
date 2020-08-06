import 'package:flutter/material.dart';
import 'package:mezza_flix/details/top_downloads_details.dart';
import 'package:mezza_flix/model/cinema.dart';

class TopDownloads extends StatelessWidget {
  final List<Cinema> cinema = Cinema.getCinema();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: cinema.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => TopDownloadsDetails(
                cinema[index])),
            ),
            },
            child: Container(
              width: 180,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    offset: Offset(0.0, 4.0),
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Center(
                child: Hero(
                  tag: cinema[index].poster,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(
                      image: NetworkImage(cinema[index].poster),
                      height: 230.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          );
        },),
    );
  }
}

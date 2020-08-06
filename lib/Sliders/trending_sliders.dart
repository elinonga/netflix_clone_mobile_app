import 'package:flutter/material.dart';
import 'package:mezza_flix/details/trending_movies_details.dart';
import 'package:mezza_flix/model/snema.dart';

class TrendingSliders extends StatelessWidget {
  final List<Snema> snema = Snema.getSnema();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: snema.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => TrendingMoviesDetails(
                    snema[index])),
              ),
            },
            child: Container(
              width: 200,
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
                  tag: snema[index].poster,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(
                      image: NetworkImage(snema[index].poster),
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

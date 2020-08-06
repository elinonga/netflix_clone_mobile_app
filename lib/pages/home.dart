import 'package:flutter/material.dart';
import 'package:mezza_flix/Sliders/top_downloads_sliders.dart';
import 'package:mezza_flix/Sliders/trending_sliders.dart';
import 'package:mezza_flix/drawer/main_drawer.dart';
import 'package:mezza_flix/model/movie.dart';


class MezzaFlixHome extends StatefulWidget {
  @override
  _MezzaFlixHomeState createState() => _MezzaFlixHomeState();
}

class _MezzaFlixHomeState extends State<MezzaFlixHome> {
  PageController _pageController;

  final List<Movie> movies = Movie.getMovies();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(
        initialPage: 1,
        viewportFraction: 0.8);
  }

  _movieSelctor(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value)*270.0,
            width: Curves.easeInOut.transform(value)*400.0,
            child: widget,
          ),
        );
      },
      child: Stack(
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
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
                  tag: movies[index].poster,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(
                      image: NetworkImage(movies[index].poster),
                      height: 220.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0.0,
        title: Image(image: AssetImage('assets/mezzaflix1.png'),
          width: 142.0,
          height: 27.0,
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            color: Colors.black,
            iconSize: 30.0,
            icon: Icon(Icons.search),
            onPressed: () => print('Search'),
          ),
        ],
      ),
      drawer: MainDrawer(),
      backgroundColor: Colors.black54,
      body: ListView(
        padding: EdgeInsets.only(bottom: 30.0),
        children: <Widget>[
          MovieSlider(), //Method Container having a PageView used for top movie sliders
          SizedBox(
              height: 30.0), //Used kwaajili ya space from one container to another
          ShowingMovieRows(), //Method showing TopDownloads, Trending & Popular Movies
        ],
      ),
    );
  }

  Widget MovieSlider() {
    return Container(
      height: 280.0,
      width: double.infinity,
      child: PageView.builder(
        controller: _pageController,
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index) {
          return _movieSelctor(index);
        },
      ),
    );
  }

  Widget ShowingMovieRows() {
    return Container(
      child: Column(
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top Downloads", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 1.0,
                    ),),
                    Icon(Icons.arrow_forward, color: Colors.white,),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              TopDownloads(), //Hii ni slider kwaajili ya kuonyesha Top Downloads Sliders - sliders/topdownloads.dart
            ],
          ),
          SizedBox(height: 50.0,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Trending", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 1.0,
                    ),),
                    Icon(Icons.arrow_forward, color: Colors.white,),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              TrendingSliders(),
            ],
          ),
        ],
      ),
    );
  }
}

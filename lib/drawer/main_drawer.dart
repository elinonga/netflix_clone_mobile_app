import 'package:flutter/material.dart';
import 'package:mezza_flix/pages/account.dart';
import 'package:mezza_flix/pages/comingup.dart';
import 'package:mezza_flix/pages/downloads.dart';
import 'package:mezza_flix/pages/favorites.dart';
import 'package:mezza_flix/pages/home.dart';


class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            color: Colors.red,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                        top: 30,
                        bottom: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/david.jpg"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Text("David Mezza", style: TextStyle(
                      fontSize: 22,
                      color: Colors.white
                  ),),
                  Text("david@example.com", style: TextStyle(
                      color: Colors.white
                  ),),
                ],
              ),
            ),
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home", style: TextStyle(
              fontSize: 18,
            ),),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MezzaFlixHome(),
                  ));
//              Navigator.of(context).pushNamed(MezzaFlixHome.routeName);
            },
          ),

          ListTile(
            leading: Icon(Icons.cloud_download),
            title: Text("Downloads", style: TextStyle(
              fontSize: 18,
            ),),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DownloadsPage(),
                  ));
//              Navigator.of(context).pushNamed(MezzaFlixHome.routeName);
            },
          ),

          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorites", style: TextStyle(
              fontSize: 18,
            ),),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FavoritesPage(),
                  ));
//              Navigator.of(context).pushNamed(MezzaFlixHome.routeName);
            },
          ),

          ListTile(
            leading: Icon(Icons.next_week),
            title: Text("Coming Up", style: TextStyle(
              fontSize: 18,
            ),),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ComingUpPage(),
                  ));
//              Navigator.of(context).pushNamed(MezzaFlixHome.routeName);
            },
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile", style: TextStyle(
              fontSize: 18,
            ),),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UserAccountPage(),
                  ));
//              Navigator.of(context).pushNamed(MezzaFlixHome.routeName);
            },
          ),

          ListTile(
            leading: Icon(Icons.arrow_back),
            title: Text("Logout", style: TextStyle(
              fontSize: 18,
            ),),
            onTap: null,
          ),
        ],
      ),
    );
  }
}

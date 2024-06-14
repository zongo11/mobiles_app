import 'package:flutter/material.dart';
import 'package:project_test/plus/attractions_screen.dart';
import 'package:project_test/plus/restaurants_screen.dart';
import 'package:project_test/plus/hebergements_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourisme Local',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tourisme Local',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: Builder(
          builder: (context) {
            return ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AttractionsScreen()),
                    );
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.place,
                      color: Colors.blue,
                    ),
                    title: Text(
                      'Attractions',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.blue,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RestaurantsScreen()),
                    );
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.restaurant,
                      color: Colors.blue,
                    ),
                    title: Text(
                      'Restaurants',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.blue,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HebergementsScreen()),
                    );
                  },
                  child: ListTile(
                    leading: Icon(
                      Icons.hotel,
                      color: Colors.blue,
                    ),
                    title: Text(
                      'Hébergements',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
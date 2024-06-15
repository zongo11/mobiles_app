import 'package:flutter/material.dart';
import 'models/Restaurant.dart'; // Assurez-vous que le chemin est correct pour Restaurant.dart
import 'screens/home_screens.dart';
import 'screens/attractions_screens.dart';
import 'screens/accommodations_screens.dart';
import 'screens/restaurants_screens.dart';
import 'screens/temoignage_screen.dart';
import 'screens/contact_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tourime local au Burkina Faso',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
      routes: {
        '/temoignages': (context) => TemoignagesScreen(),
      },
    );
  }
}



class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    AttractionsScreen(),
    HebergementsScreen(),
    RestaurantsScreen(),
    ContactScreen(),
    TemoignagesScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pop(context); // Ferme le Drawer après la navigation
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burkina institute of technology'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                _onItemTapped(0);
              },
            ),
            ListTile(
              leading: Icon(Icons.attractions),
              title: Text('Attraction'),
              onTap: () {
                _onItemTapped(1);
              },
            ),
            ListTile(
              leading: Icon(Icons.hotel),
              title: Text('Hébergement'),
              onTap: () {
                _onItemTapped(2);
              },
            ),
            ListTile(
              leading: Icon(Icons.restaurant),
              title: Text('Restaurant'),
              onTap: () {
                _onItemTapped(3);
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact'),
              onTap: () {
                _onItemTapped(4);
              },
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text('Lieu de témoignage'),
              onTap: () {
                _onItemTapped(5);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attractions),
            label: 'Attraction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            label: 'Hébergement',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Restaurant',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contact_mail),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Lieu de témoignage',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

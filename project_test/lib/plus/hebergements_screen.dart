import 'package:flutter/material.dart';

class HebergementsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hebergements cinq etoiles'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text('hotel splendid'),
              subtitle: Text('Un des plus beaux hebergement situé au centre ville de la capital'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Sopatel'),
              subtitle: Text('Situé pres du barrage de Tanghin'),
            ),
          ),
          // Ajoutez d'autres attractions touristiques ici
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class RestaurantsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
                title: Text('Mam Sank'),
              subtitle: Text('Un restaurant aux saveurs traditionnels'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Bienvenu a Cocorico'),
              subtitle: Text('Degustez les bons mets a Cocorico'),
            ),
          ),
          // Ajoutez d'autres attractions touristiques ici
        ],
      ),
    );
  }
}
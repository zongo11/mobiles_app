import 'package:flutter/material.dart';

class AttractionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attractions touristiques'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text('Cascade de Banfora'),
              subtitle: Text('Une des plus belles attractions du Burkina'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Les ruines de Lorépeni'),
              subtitle: Text('Un des patrimoines de UNESCO'),
            ),
          ),
          // Ajoutez d'autres attractions touristiques ici
        ],
      ),
    );
  }
}
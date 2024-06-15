import 'package:flutter/material.dart';
import '../widgets/image_card.dart';
import '../widgets/footer.dart';

class HebergementsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hébergements'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildHebergementCard(
            title: 'Hôtel Bravia',
            description: 'Un hôtel de luxe situé au cœur de la ville, offrant des vues panoramiques et un service exceptionnel.',
            imagePaths: [
              'assets/images/bravia3.jpeg',
              'assets/images/bravia2.jpeg',
              'assets/images/bravia1.jpeg',
            ],
          ),
          _buildHebergementCard(
            title: 'Auberge du Soleil',
            description: 'Une charmante auberge avec une atmosphère conviviale, idéale pour les familles et les voyageurs.',
            imagePaths: [
              'assets/images/residencesya1.jpg',
              'assets/images/residencesya2.jpg',
              'assets/images/residencesya3.jpg',
            ],
          ),
          _buildHebergementCard(
            title: 'Villa Lancanster',
            description: 'Une villa privée avec piscine, parfait pour une escapade romantique ou des vacances en famille.',
            imagePaths: [
              'assets/images/lancanster1.jpg',
              'assets/images/lancanster2.jpg',
              'assets/images/lancanster3.jpg',
            ],
          ),
          // Ajoute d'autres hébergements ici
        ],
      ),
    );
  }

  Widget _buildHebergementCard({required String title, required String description, required List<String> imagePaths}) {
    return Center(
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20), // Ajout de marge verticale
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ImageCard(imagePaths: imagePaths, title: title),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                description,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

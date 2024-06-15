import 'package:flutter/material.dart';
import 'attractions_screens.dart';
import 'restaurants_screens.dart';
import 'accommodations_screens.dart';
import 'temoignage_screen.dart';
import '../widgets/animated_welcome.dart';
import '../widgets/service_card.dart';
import '../widgets/footer.dart';
import '../widgets/big_image_card.dart'; // Importer le nouveau widget

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            BigImageCard(), // Ajouter le nouveau widget BigImageCard ici
            SizedBox(height: 20),
            Text(
              'Nos Services',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            _buildServiceCards(),

          ],
        ),
      ),
    );
  }

  Widget _buildServiceCards() {
    List<Map<String, String>> services = [
      {
        'title': 'Attractions touristiques',
        'description': 'Découvrez les sites les plus époustouflants du Burkina Faso.',
        'imagePath': 'assets/images/attractions.jpg',
      },
      {
        'title': 'Restaurants',
        'description': 'Explorez les meilleurs endroits pour manger et savourer la cuisine locale.',
        'imagePath': 'assets/images/restaurants.jpg',
      },
      {
        'title': 'Hébergements',
        'description': 'Trouvez des hébergements confortables et abordables.',
        'imagePath': 'assets/images/hebergements.jpg',
      },
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: services.map((service) {
          return ServiceCard(
            title: service['title']!,
            description: service['description']!,
            imagePath: service['imagePath']!,
          );
        }).toList(),
      ),
    );
  }
}

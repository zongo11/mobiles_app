import 'package:flutter/material.dart';
import '../models/temoignages.dart';
import '../widgets/footer.dart';

class TemoignagesScreen extends StatelessWidget {
  final List<Temoignage> temoignages = [
    Temoignage(
      imagePath: 'assets/images/image3.jpg',
      commentaire: '😊 C\'était une expérience incroyable!\n'
          '🌟 J\'ai découvert des endroits magnifiques.\n'
          '👍 Je recommande à tout le monde.\n'
          '🏞️ Hâte d\'y retourner!',
    ),
    Temoignage(
      imagePath: 'assets/images/image4.jpg',
      commentaire: '🍽️ La nourriture était délicieuse!\n'
          '🍷 Les vins locaux sont excellents.\n'
          '🤩 Un régal pour les papilles.\n'
          '🌆 Ambiance incroyable!',
    ),
    Temoignage(
      imagePath: 'assets/images/image5.jpg',
      commentaire: '🏨 L\'hébergement était confortable.\n'
          '🛏️ Les chambres sont propres et spacieuses.\n'
          '🛎️ Personnel très accueillant.\n'
          '🌟 Je recommande vivement!',
    ),
    Temoignage(
      imagePath: 'assets/images/image8.jpg',
      commentaire: '🎉 Les attractions étaient amusantes.\n'
          '🎢 Beaucoup d\'activités à faire.\n'
          '🤸‍♂️ Parfait pour les familles.\n'
          '🚴‍♂️ Idéal pour les sportifs.',
    ),
    Temoignage(
      imagePath: 'assets/images/image6.jpg',
      commentaire: '📸 De superbes opportunités photo.\n'
          '🌅 Les paysages sont à couper le souffle.\n'
          '📍 Un endroit à ne pas manquer.\n'
          '🌍 Une expérience unique.',
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Témoignages'),
      ),
      body: ListView.builder(
        itemCount: temoignages.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(40.0),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(temoignages[index].imagePath),
                  ),
                  SizedBox(height: 16),
                  Text(
                    temoignages[index].commentaire,
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

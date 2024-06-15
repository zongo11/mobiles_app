import 'package:flutter/material.dart';
import '../widgets/animated_welcome.dart'; // Importer AnimatedWelcome

class BigImageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double imageHeight = screenWidth * 0.6; // Ajustez le ratio hauteur / largeur selon vos besoins

    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      elevation: 5,
      child: Container(
        height: imageHeight,
        width: screenWidth,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(4)),
              child: Image.asset(
                'assets/images/grande_image.jpg', // Chemin de l'image à ajuster
                fit: BoxFit.cover,
                width: screenWidth,
                height: imageHeight,
              ),
            ),
            Center(
              child: AnimatedWelcome(),
            ),
          ],
        ),
      ),
    );
  }
}

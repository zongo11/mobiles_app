import 'package:flutter/material.dart';
import 'home_screens.dart';
import '../widgets/footer.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Université',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  HomeScreen(),
    );
  }
}


class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contactez-nous'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nom',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer votre nom';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer votre email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Message',
                  border: OutlineInputBorder(),
                ),
                maxLines: 4,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer votre message';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 6),
              SizedBox(
                width: double.infinity, // Le bouton prendra toute la largeur disponible
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.green, // Couleur du texte blanc
                    padding: EdgeInsets.symmetric(vertical: 16), // Taille du bouton (hauteur)
                  ),
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      // Traiter les données du formulaire
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Message envoyé')),
                      );
                    }
                  },
                  child: const Text('Envoyer'),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class Restaurant {
  final String name;
  final String location;
  final String city;
  final String imagePath;
  final int stars;
  final String description;

  Restaurant({
    required this.name,
    required this.location,
    required this.city,
    required this.imagePath,
    required this.stars,
    required this.description,
  });
}

final List<Restaurant> restaurants = [
  // Restaurants à Koudougou
  Restaurant(
    name: 'Fruite',
    location: 'Secteur 5',
    city: 'Koudougou',
    imagePath: 'assets/images/nourriture4.jpg',
    stars: 41,
    description: "Un petit déjeuner parfaitement réussi chez notre Restaurant. Le plat de fruit accompagné d'œufs est une explosion de saveurs et de textures. Les fruits sont frais et variés, offrant une gamme de couleurs et de saveurs qui ravissent les papilles dès le premier coup d'œil. Quant aux œufs, ils sont cuisinés à point, soit juste coagulés, ce qui assure une consommation optimale de protéines tout en préservant leur saveur naturelle. Le mariage harmonieux de ces deux éléments constitue un repas équilibré et satisfaisant, idéal pour commencer la journée sur une note positive. L'ambiance chaleureuse et accueillante du restaurant complète l'ensemble, créant une expérience culinaire agréable qui ne laisse pas indifférent. Un plat que je recommande à tous ceux qui apprécient une cuisine simple mais savamment composée.",
  ),
  Restaurant(
    name: 'Riz et viande',
    location: 'Burkina',
    city: 'Koudougou',
    imagePath: 'assets/images/nourriture3.jpg',
    stars: 38,
    description: "Un plat culinaire époustouflant! Le riz accompagné de viande chez notre Restaurant est un mélange parfait de saveurs et de textures. La viande est cuite à point, tendre et savoureuse, tandis que le riz est doux et bien cuit. Le mélange harmonieux des saveurs, combiné à la qualité des ingrédients frais, offre une expérience gastronomique exceptionnelle. L'atmosphère chaleureuse et accueillante du restaurant complète l'ensemble, rendant chaque repas une véritable fête pour les papilles. Je recommande vivement ce plat à tous ceux qui recherchent une cuisine authentique et délicieuse.",
  ),
  // Restaurants à Bobo
  Restaurant(
    name: 'Bistro',
    location: 'Ouezin Villa ',
    city: 'Bobo',
    imagePath: 'assets/images/nourriture1.jpg',
    stars: 41,
    description: "Découvrez une expérience culinaire unique au Bistro, situé au cœur de OUezin Villa à Bobo-Dioulasso. Notre restaurant se distingue par une atmosphère chaleureuse et un cadre accueillant, idéal pour savourer des plats savoureux dans une ambiance détendue.Le Bistro est réputé pour ses plats exquis alliant tradition et modernité. Chaque plat est méticuleusement préparé avec des ingrédients frais et locaux, garantissant une explosion de saveurs à chaque bouchée. Notre menu varié propose une sélection alléchante de plats, des entrées délicates aux desserts somptueux, sans oublier une carte des vins soigneusement élaborée pour compléter votre repas.Notre équipe dévouée vous accueille avec un service attentionné, prête à vous faire vivre une expérience gastronomique mémorable à chaque visite. Que ce soit pour un déjeuner d'affaires, un dîner romantique ou simplement pour savourer un café après-midi, le Bistro est l'adresse incontournable pour les amateurs de bonne cuisine à Bobo-Dioulasso.Explorez le Bistro et laissez-vous séduire par la cuisine raffinée et l'ambiance conviviale qui en font un lieu de prédilection pour les connaisseurs de gastronomie.",
  ),
  Restaurant(
    name: '344 manguiers',
    location: 'Sarfala',
    city: 'Bobo',
    imagePath: 'assets/images/nourriture5.jpg',
    stars: 38,
    description: "Situé au cœur de Bobo, Sarfala est bien plus qu'un simple restaurant : c'est une expérience culinaire inégalée qui marie tradition et modernité. Depuis son ouverture, Sarfala s'est imposé comme une destination de choix pour les amateurs de cuisine raffinée et authentique.",
  ),
  Restaurant(
    name: 'Bon goût',
    location: 'Secteur 25',
    city: 'Bobo',
    imagePath: 'assets/images/nourriture8.jpeg',
    stars: 41,
    description: "Une découverte culinaire inoubliable chez notre Restaurant. Le plat de haricot verts et poissons carpe se distingue par sa fraîcheur et sa saveur incomparable. Les haricots verts sont tendres et croustillants, tandis que le poisson carpe est exquisément cuisiné, révélant une texture moelleuse et une saveur profonde. Le mariage harmonieux de ces deux ingrédients, accompagné d'une sauce légèrement épicée, offre une expérience gustative unique. L'attention portée aux détails dans la préparation et la présentation du plat renforce l'impression d'être servi quelque chose de vraiment spécial. En outre, l'environnement accueillant et convivial du restaurant ajoute à l'ensemble une touche d'authenticité africaine, rendant chaque visite une occasion de savourer la culture à travers la cuisine. Un plat que j'envoie à tous ceux qui cherchent à explorer une cuisine africaine authentique et délicieuse.",
  ),
  // Restaurants à Ouagadougou
  Restaurant(
    name: 'L\'eau vive',
    location: 'Dassagho',
    city: 'Ouagadougou',
    imagePath: 'assets/images/nourriture6.jpeg',
    stars: 41,
    description: "Une découverte culinaire inoubliable chez notre Restaurant. Le plat de haricot verts et poissons carpe se distingue par sa fraîcheur et sa saveur incomparable. Les haricots verts sont tendres et croustillants, tandis que le poisson carpe est exquisément cuisiné, révélant une texture moelleuse et une saveur profonde. Le mariage harmonieux de ces deux ingrédients, accompagné d'une sauce légèrement épicée, offre une expérience gustative unique. L'attention portée aux détails dans la préparation et la présentation du plat renforce l'impression d'être servi quelque chose de vraiment spécial. En outre, l'environnement accueillant et convivial du restaurant ajoute à l'ensemble une touche d'authenticité africaine, rendant chaque visite une occasion de savourer la culture à travers la cuisine. Un plat que j'envoie à tous ceux qui cherchent à explorer une cuisine africaine authentique et délicieuse.",
  ),
  Restaurant(
    name: 'La perle',
    location: 'Tampouy',
    city: 'Ouagadougou',
    imagePath: 'assets/images/nourriture10.jpg',
    stars: 38,
    description: "La salade chez notre Restaurant est une véritable merveille culinaire. Les ingrédients sont frais et de saison, ce qui donne à chaque bouchée une saveur intense et unique. La combinaison de laitue, de tomates, de concombre, et d'autres légumes frais est soignée et équilibrée, créant une symphonie de saveurs qui ravit les papilles. La vinaigrette maison est légèrement épicée, apportant une touche de piquant qui révèle encore mieux les saveurs des légumes. L'attention portée à la présentation du plat, avec une mise en page soignée, ajoute également à l'expérience culinaire. L'ambiance chaleureuse et accueillante du restaurant complète l'ensemble, rendant chaque repas une véritable fête pour les papilles. Une salade que j'envoie à tous ceux qui cherchent une option saine et délicieuse.",
  ),
  Restaurant(
    name: 'Nerwata',
    location: 'Bargho',
    city: 'Ouagadougou',
    imagePath: 'assets/images/nourriture9.jpg',
    stars: 41,
    description: "Une découverte culinaire inoubliable chez notre Restaurant. Le plat de haricot verts et poissons carpe se distingue par sa fraîcheur et sa saveur incomparable. Les haricots verts sont tendres et croustillants, tandis que le poisson carpe est exquisément cuisiné, révélant une texture moelleuse et une saveur profonde. Le mariage harmonieux de ces deux ingrédients, accompagné d'une sauce légèrement épicée, offre une expérience gustative unique. L'attention portée aux détails dans la préparation et la présentation du plat renforce l'impression d'être servi quelque chose de vraiment spécial. En outre, l'environnement accueillant et convivial du restaurant ajoute à l'ensemble une touche d'authenticité africaine, rendant chaque visite une occasion de savourer la culture à travers la cuisine. Un plat que j'envoie à tous ceux qui cherchent à explorer une cuisine africaine authentique et délicieuse.",
  ),
];

class RestaurantsScreen extends StatefulWidget {
  @override
  _RestaurantsScreenState createState() => _RestaurantsScreenState();
}

class _RestaurantsScreenState extends State<RestaurantsScreen> {
  String _selectedCity = 'Koudougou';

  @override
  Widget build(BuildContext context) {
    final filteredRestaurants = restaurants.where((restaurant) => restaurant.city == _selectedCity).toList();

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('Bienvenue dans notre restaurant'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: DropdownButton<String>(
              value: _selectedCity,
              dropdownColor: Colors.blue,
              icon: Icon(Icons.arrow_downward, color: Colors.white),
              underline: Container(
                height: 2,
                color: Colors.white,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedCity = newValue!;
                });
              },
              items: <String>['Koudougou', 'Ouagadougou', 'Bobo']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value, style: TextStyle(color: Colors.white)),
                );
              }).toList(),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: filteredRestaurants.length,
        itemBuilder: (context, index) {
          final restaurant = filteredRestaurants[index];
          return Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: Card(
                margin: const EdgeInsets.symmetric(vertical: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(restaurant.imagePath, fit: BoxFit.cover),
                    TitleSection(
                      name: restaurant.name,
                      location: restaurant.location,
                      stars: restaurant.stars,
                    ),
                    ButtonSection(),
                    TextSection(description: restaurant.description),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
    required this.stars,
  });

  final String name;
  final String location;
  final int stars;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('$stars'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.call, color: Colors.blue),
            onPressed: () => _launchURL('tel:+22672556386'),
          ),
          IconButton(
            icon: Icon(Icons.near_me, color: Colors.blue),
            onPressed: () => _launchURL('geo:12.217280434744508, -2.376682463555809'), // Change to actual location
          ),
          IconButton(
            icon: Icon(Icons.share, color: Colors.blue),
            onPressed: () => _shareContent(context),
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _shareContent(BuildContext context) async {
    final RenderBox box = context.findRenderObject() as RenderBox;
    await Share.share('Check out this amazing restaurant!',
        subject: 'Restaurant Recommendation',
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RestaurantsScreen(),
  ));
}

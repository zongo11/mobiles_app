import 'package:flutter/material.dart';
import 'package:projet_text/widgets/footer.dart';
class AttractionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attractions touristiques'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildCard(
            title: 'Les cascades de Banfora',
            description: '''Situées dans la région des Cascades au Burkina Faso, elles sont l'une des attractions naturelles les plus spectaculaires du pays. Situées à environ 15 kilomètres de la ville de Banfora, elles sont formées par le cours de la rivière Komoé. Les cascades descendent en plusieurs niveaux sur des roches de grès, créant de magnifiques bassins naturels où les visiteurs peuvent se baigner. Entourées d'une végétation luxuriante, elles offrent un cadre idéal pour les randonnées et les pique-niques. Les lieux sont également connus pour leur biodiversité, abritant de nombreuses espèces d'oiseaux et de plantes. En plus de leur beauté naturelle, les cascades de Banfora jouent un rôle important dans la vie culturelle et économique de la région, attirant des touristes locaux et internationaux. Les habitants des environs sont souvent guides et fournissent des informations sur l'histoire et les légendes associées à ce site enchanteur.''',
            additionalImages: ['assets/images/nature.jpg', 'assets/images/architecture_2.jpg'],
          ),
          _buildCard(
            title: 'Les ruines de Lorépeni',
            description: '''Les ruines de Lorépeni sont un site historique majeur situé dans le nord du Burkina Faso, près de la frontière avec le Mali. Ce site archéologique est l'un des plus importants de la région de Ouagadougou et offre aux visiteurs une vue unique sur l'histoire ancienne du peuple Mossi. Les ruines comprennent des vestiges de palais, de fortifications et de structures religieuses datant du XIIIe siècle. Le site est classé au patrimoine mondial de l'UNESCO depuis 1982. Les ruines de Lorépeni sont un témoignage vivant de la richesse culturelle et historique du Burkina Faso, attirant des chercheurs, des archéologues et des amateurs d'histoire de tous horizons. Visiter les ruines de Lorépeni offre une occasion unique de découvrir l'histoire ancienne du peuple Mossi et de comprendre l'importance de cette civilisation dans le développement de la région''',
            additionalImages: ['assets/images/loropeni1.jpg', 'assets/images/loropeni2.jpg'],
          ),
          _buildCard(
            title: 'Les Pics de Sindou',
            description: '''Les Pics de Sindou sont une formation géologique unique située dans la région de Banfora, au Burkina Faso. Ils sont composés de colonnes de calcaire qui se dressent majestueusement sur le sol, offrant une vue imprenable sur la savane environnante. Les Pics de Sindou sont particulièrement impressionnants lorsqu'ils sont illuminés par le soleil couchant, créant un spectacle visuel époustouflant. Cette attraction naturelle est populaire auprès des touristes pour ses paysages pittoresques et ses opportunités de photographie. Les visiteurs peuvent accéder aux pics via un sentier facilement accessible, permettant une exploration sécurisée et une immersion dans la nature.''',
            additionalImages: ['assets/images/sindou1.jpg', 'assets/images/sindou2.jpg'],
          ),
          _buildCard(
            title: 'Crocodiles Sacrés de Sabou',
            description: '''Les Crocodiles Sacrés de Sabou sont une attraction fascinante située dans la région de Bobo-Dioulasso, au Burkina Faso. Ces crocodiles, sacrés par la population locale, sont gardés dans un grand réservoir naturel et sont considérés comme des symboles de protection et de guérison. Les visiteurs peuvent observer ces animaux majestueux de près, assister à des rituels sacrés et participer à des activités éducatives organisées par les communautés locales. Les Crocodiles Sacrés de Sabou offrent une expérience unique de rencontre avec la faune sauvage tout en appréciant la richesse culturelle du Burkina Faso.''',
            additionalImages: ['assets/images/sabou1.jpg', 'assets/images/sabou2.jpg'],
          ),
          _buildCard(
            title: 'Silures Sacrés de Bobo-Dioulasso',
            description: '''Les Silures Sacrés de Bobo-Dioulasso sont une autre attraction fascinante de la région de Bobo-Dioulasso, au Burkina Faso. Ces poissons, sacrés par la population locale, sont considérés comme des symboles de fertilité et de prospérité. Les silures sacrés sont généralement exposés dans des bassins publics où les visiteurs peuvent les admirer et participer à des cérémonies et des rites traditionnels. La préservation et la vénération des silures sacrés font partie intégrante de la culture et de la spiritualité des peuples Mossi et Bobo, offrant aux visiteurs une occasion unique de plonger dans la richesse culturelle du Burkina Faso.''',
            additionalImages: ['assets/images/silure1.jpg', 'assets/images/silure2.jpg'],
          ),

          // Répétez pour les autres attractions...
        ],
      ),
    );
  }

  Widget _buildCard({required String title, required String description, required List<String> additionalImages}) {
    return Center(
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              child: GridView.count(
                crossAxisCount: 3, // Affiche 3 images par ligne
                shrinkWrap: true, // Empêche GridView de prendre toute la hauteur disponible
                physics: NeverScrollableScrollPhysics(), // Désactive le défilement pour ne pas interférer avec ListView
                children: additionalImages.map((imagePath) => Image.asset(imagePath, width: 100, height: 100)).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(description, style: const TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

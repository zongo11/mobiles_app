class Restaurant {
  final String name;
  final String location;
  final String city; // Nouveau champ
  final String imagePath;
  final int stars;
  final String description;

  Restaurant({
    required this.name,
    required this.location,
    required this.city, // Initialisation du nouveau champ
    required this.imagePath,
    required this.stars,
    required this.description,
  });
}

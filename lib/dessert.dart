class Dessert {
  final String name;
  final String description;
  final String imageUrl;

  Dessert({
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  @override
  String toString() {
    return 'Dessert{name: $name, description: $description, imageUrl: $imageUrl}';
  }
}

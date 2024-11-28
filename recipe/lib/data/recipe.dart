class Recipe {
  final String name;
  final String category;
  final int preparationTime;
  final double rating;
  final String imagePath;
  final List<String> ingredients;
  final List<String> preparationSteps;
  final int calories; 

  Recipe({
    required this.name,
    required this.category,
    required this.preparationTime,
    required this.rating,
    required this.imagePath,
    required this.ingredients,
    required this.preparationSteps,
    required this.calories,
  });
}

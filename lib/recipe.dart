class Recipe {
  String label;
  String url;

  Recipe(
    this.label,
    this.url,
  );
  // Todo: Add Recipe List

  static List<Recipe> samples = [
    Recipe(
      'Spagheti',
      '1.jpeg',
    ),
    Recipe(
      'Spagheti',
      '1.jpeg',
    ),
    Recipe(
      'Spagheti',
      '1.jpeg',
    ),
    Recipe(
      'Spagheti',
      '1.jpeg',
    ),
  ];
}

//Todo: Add Ingredient() here
class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(this.quantity, this.measure, this.name);
}

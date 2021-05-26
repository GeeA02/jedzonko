class CalculatorViewModel {
  late List<Product> tmpProducts;

  CalculatorViewModel() {
    tmpProducts = [
      Product(
          "Mleko",
          "https://static.openfoodfacts.org/images/products/590/082/000/0011/front_pl.39.400.jpg",
          DateTime.now().toIso8601String()),
      Product("Chleb", null, DateTime.now().toIso8601String()),
      Product("Majonez", null, DateTime.now().toIso8601String())
    ];
  }
}

class Product {
  String name;
  String? imageUrl;
  String date;

  Product(this.name, this.imageUrl, this.date);
}

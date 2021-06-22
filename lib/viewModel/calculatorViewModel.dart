import 'package:jedzonko/model/product.dart';

class CalculatorViewModel {
  late List<Product> tmpProducts;

  CalculatorViewModel() {
    tmpProducts = [
      Product(
          null,
          "Mleko",
          "https://static.openfoodfacts.org/images/products/590/082/000/0011/front_pl.39.400.jpg",
          DateTime.now()),
      Product(null, "Chleb", null, DateTime.now()),
      Product(null, "Majonez", null, DateTime.now())
    ];
  }
}

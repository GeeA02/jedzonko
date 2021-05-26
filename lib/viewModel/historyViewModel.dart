import 'package:jedzonko/model/product.dart';

class HistoryViewModel {
  late List<Product> tmpProducts;

  HistoryViewModel() {
    tmpProducts = [
      Product(
          null,
          "Mleko",
          "https://static.openfoodfacts.org/images/products/590/082/000/0011/front_pl.39.400.jpg",
          DateTime.now().toIso8601String()),
      Product(null, "Chleb", null, DateTime.now().toIso8601String()),
      Product(
          null,
          "Kawa",
          "https://static.openfoodfacts.org/images/products/590/115/404/2746/front_pl.4.400.jpg",
          DateTime.now().toIso8601String()),
      Product(null, "Majonez", null, DateTime.now().toIso8601String())
    ];
  }
}

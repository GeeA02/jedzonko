import 'package:jedzonko/model/apiProduct.dart';
import 'package:jedzonko/model/productInfo.dart';

class HistoryViewModel {
  late List<ApiProduct> tmpProducts;

  HistoryViewModel() {
    tmpProducts = [
      ApiProduct(
          ProductInfo(
              null,
              "Mleko",
              "https://static.openfoodfacts.org/images/products/590/082/000/0011/front_pl.39.400.jpg",
              DateTime.now()),
          null,
          null),
      ApiProduct(ProductInfo(null, "Chleb", null, DateTime.now()), null, null),
      ApiProduct(
          ProductInfo(
              null,
              "Kawa",
              "https://static.openfoodfacts.org/images/products/590/115/404/2746/front_pl.4.400.jpg",
              DateTime.now()),
          null,
          null),
      ApiProduct(ProductInfo(null, "Majonez", null, DateTime.now()), null, null)
    ];
  }
}

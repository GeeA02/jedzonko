import 'package:jedzonko/database/calculator_product_repository.dart';
import 'package:jedzonko/model/apiProduct.dart';
import 'package:jedzonko/model/product.dart';

class CalculatorViewModel {
  // Singleton CalculatorViewModel implemetentation
  static final CalculatorViewModel _calculatorViewModel =
      CalculatorViewModel._internal();
  CalculatorViewModel._internal();
  factory CalculatorViewModel(
      {required CalculatorProductRepository repository}) {
    return _calculatorViewModel;
  }

  //TODO ilość kalorii produktów z kalkulatora (zmieniana po edycji jakiegokolwiek produktu)
  int get kcalCount => 0;

  List<ApiProduct> get tmpProducts => _tmp;

  List<ApiProduct> _tmp = [
    ApiProduct(
        Product(
            null,
            "Mleko",
            "https://static.openfoodfacts.org/images/products/590/082/000/0011/front_pl.39.400.jpg",
            DateTime.now()),
        null),
    ApiProduct(Product(null, "Chleb", null, DateTime.now()), null),
    ApiProduct(Product(null, "Majonez", null, DateTime.now()), null)
  ];

  /*
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
  }*/
}

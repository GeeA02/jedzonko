import 'package:hive/hive.dart';
import 'package:jedzonko/database/calculator_product_repository.dart';
import 'package:jedzonko/model/product_calculator.dart';

class CalculatorViewModel {
  // Singleton CalculatorViewModel implemetentation

  final Box<ProductCalculator> _box =
      CalculatorProductRepository().productListBox!;
  static final CalculatorViewModel _calculatorViewModel =
      CalculatorViewModel._internal();
  CalculatorViewModel._internal();
  factory CalculatorViewModel() {
    return _calculatorViewModel;
  }

  Box<ProductCalculator> get box => _box;
  List<ProductCalculator> get productList => _box.values.toList();
  int get kcalCount => productList.length;

  
  void addProduct(ProductCalculator product) {
    _box.put(product.id, product);
  }

  void deleteProduct(ProductCalculator product) {
    _box.delete(product.id);
  }

  void deleteAllProducts(){
    _box.deleteAll(_box.keys);
  }

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

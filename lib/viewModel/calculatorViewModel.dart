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
  
  int get kcalCount {
    int allCal = 0;
    productList.forEach((el) => allCal += (el.kcal * (el.quantity~/100)));
    return allCal;
  }

  void addProduct(ProductCalculator product) {
    _box.put(product.id, product);
  }

  void deleteProduct(ProductCalculator product) {
    _box.delete(product.id);
  }

  void deleteAllProducts() {
    _box.deleteAll(_box.keys);
  }
}

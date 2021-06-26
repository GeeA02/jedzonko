import 'package:jedzonko/database/product_repository.dart';
import 'package:jedzonko/model/product.dart';

class CalculatorViewModel {

  // Singleton CalculatorViewModel implemetentation
  static final CalculatorViewModel _calculatorViewModel = CalculatorViewModel._internal();
  CalculatorViewModel._internal();
  factory CalculatorViewModel({required ProductRepository repository}){
    
    return _calculatorViewModel;
  }

  List<Product> get tmpProducts => _tmp;
  
  List<Product> _tmp = [
      Product(
          null,
          "Mleko",
          "https://static.openfoodfacts.org/images/products/590/082/000/0011/front_pl.39.400.jpg",
          DateTime.now()),
      Product(null, "Chleb", null, DateTime.now()),
      Product(null, "Majonez", null, DateTime.now())
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

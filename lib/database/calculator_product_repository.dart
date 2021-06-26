import 'package:hive/hive.dart';
import 'package:jedzonko/model/product_calculator.dart';

class CalculatorProductRepository {
  Box<ProductCalculator>? productListBox;

  CalculatorProductRepository._privateCostructor();
  static final CalculatorProductRepository _instance = CalculatorProductRepository._privateCostructor();
  
  factory CalculatorProductRepository(){
    return _instance;
  }

  static CalculatorProductRepository get instance => _instance;
  
  setBox(Box<ProductCalculator> box){
    productListBox = box;
  }
}
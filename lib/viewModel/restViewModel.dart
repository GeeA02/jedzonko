import 'package:hive/hive.dart';
import 'package:jedzonko/database/calculator_product_repository.dart';
import 'package:jedzonko/database/history_product_repository.dart';
import 'package:jedzonko/model/productHistory.dart';
import 'package:jedzonko/model/product_calculator.dart';

class ResetViewModel{


  final Box<ProductCalculator> _boxCalculator =
      CalculatorProductRepository().productListBox!;
  
  final Box<ProductHistory> _boxHistory =
      HistoryProductRepository().productListBox!;
  
  static final ResetViewModel _resetViewModel =
      ResetViewModel._internal();
  ResetViewModel._internal();
  factory ResetViewModel() {
    return _resetViewModel;
  }

  void resetAllBoxes(){
    _boxCalculator.deleteAll(_boxCalculator.keys);
    _boxHistory.deleteAll(_boxHistory.keys);
  }
}
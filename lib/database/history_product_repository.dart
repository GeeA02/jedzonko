import 'package:hive/hive.dart';
import 'package:jedzonko/model/productHistory.dart';

class HistoryProductRepository {
  Box<ProductHistory>? productListBox;

  HistoryProductRepository._privateCostructor();
  static final HistoryProductRepository _instance = HistoryProductRepository._privateCostructor();
  
  factory HistoryProductRepository(){
    return _instance;
  }
  static HistoryProductRepository get instance => _instance;
  setBox(Box<ProductHistory> box){
    productListBox = box;
  }
}
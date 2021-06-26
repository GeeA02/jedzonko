import 'package:hive/hive.dart';
import 'package:jedzonko/model/apiProduct.dart';

class HistoryProductRepository {
  Box<ApiProduct>? productListBox;

  HistoryProductRepository._privateCostructor();
  static final HistoryProductRepository _instance = HistoryProductRepository._privateCostructor();
  
  factory HistoryProductRepository(){
    return _instance;
  }
  static HistoryProductRepository get instance => _instance;
  setBox(Box<ApiProduct> box){
    productListBox = box;
  }
}
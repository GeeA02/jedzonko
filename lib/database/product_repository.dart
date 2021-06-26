import 'package:hive/hive.dart';

class ProductRepository {
  Box<dynamic>? productListBox;

  ProductRepository._privateCostructor(){
    this.productListBox = Hive.box('productList');
  }
  static final ProductRepository _instance = ProductRepository._privateCostructor();
  
  factory ProductRepository(){
    return _instance;
  }
}
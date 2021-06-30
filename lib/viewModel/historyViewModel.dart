import 'package:hive/hive.dart';
import 'package:jedzonko/database/history_product_repository.dart';
import 'package:jedzonko/model/productHistory.dart';

class HistoryViewModel {
  final Box<ProductHistory> _box =
      HistoryProductRepository().productListBox!;
  static final HistoryViewModel _historyViewModel =
      HistoryViewModel._internal();
  HistoryViewModel._internal();
  factory HistoryViewModel() {
    return _historyViewModel;
  }

  Box<ProductHistory> get box => _box;
  List<ProductHistory> get productList => _box.values.toList();
  
  void addProduct(ProductHistory product) {
    _box.put(product.id, product);
  }

  void deleteProduct(ProductHistory product) {
    _box.delete(product.id);
  }

  void deleteAllProducts(){
    _box.deleteAll(_box.keys);
  }
}

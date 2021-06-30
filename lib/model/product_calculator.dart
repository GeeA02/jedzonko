import 'package:hive/hive.dart';
import 'package:jedzonko/model/productInfo.dart';
part 'product_calculator.g.dart';

@HiveType(typeId: 2)
class ProductCalculator {
  ProductCalculator(this.productInfo, this.quantity, this.kcal, this.id);
  
  @HiveField(0)
  ProductInfo productInfo;
 
  @HiveField(1)
  int quantity;

  @HiveField(2)
  String id;

  @HiveField(3)
  int kcal;

}

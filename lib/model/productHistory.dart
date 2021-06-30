
import 'package:hive/hive.dart';
import 'package:jedzonko/model/productInfo.dart';

part 'productHistory.g.dart';

@HiveType(typeId: 1)
class ProductHistory {
  ProductHistory(this.productInfo, this.id);
  
  @HiveField(0)
  ProductInfo productInfo;

  @HiveField(2)
  String id;

}

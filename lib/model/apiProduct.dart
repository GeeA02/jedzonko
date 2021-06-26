import 'package:jedzonko/model/product.dart';
import 'package:hive/hive.dart';
import 'nutriments.dart';

@HiveType(typeId: 1)
class ApiProduct extends HiveObject {

  @HiveField(0)
  Product product;
  @HiveField(1)
  Nutriments? nutriments;
  
  ApiProduct(this.product, this.nutriments);
}

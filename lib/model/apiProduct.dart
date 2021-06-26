import 'package:jedzonko/model/product.dart';
import 'package:hive/hive.dart';
import 'nutriments.dart';

part 'apiProduct.g.dart';

@HiveType(typeId: 1)
class ApiProduct extends HiveObject {

  @HiveField(0)
  Product product;
  @HiveField(1)
  Nutriments? nutriments;
  @HiveField(2)
  ApiProduct(this.product, this.nutriments);
}

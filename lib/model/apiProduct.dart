import 'package:jedzonko/model/productInfo.dart';
import 'package:hive/hive.dart';
import 'nutriments.dart';

@HiveType(typeId: 1)
class ApiProduct extends HiveObject {
  @HiveField(0)
  ProductInfo product;
  @HiveField(1)
  Nutriments? nutriments;
  @HiveField(2)
  String? nutriscore;

  ApiProduct(this.product, this.nutriments, this.nutriscore);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ApiProduct &&
        other.product == product &&
        other.nutriments == nutriments &&
        other.nutriscore == nutriscore;
  }

  @override
  int get hashCode =>
      product.hashCode ^ nutriments.hashCode ^ nutriscore.hashCode;
}
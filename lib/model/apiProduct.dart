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

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ApiProduct &&
        other.product == product &&
        other.nutriments == nutriments;
  }

  @override
  int get hashCode => product.hashCode ^ nutriments.hashCode;
}

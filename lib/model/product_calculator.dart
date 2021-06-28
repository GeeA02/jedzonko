import 'package:jedzonko/model/apiProduct.dart';
import 'package:jedzonko/model/product.dart';
import 'package:jedzonko/model/nutriments.dart';

class ProductCalculator extends ApiProduct {
  ProductCalculator.fromRawData(
      Product product, Nutriments? nutriments, this.quantity)
      : super(product, nutriments);
  ProductCalculator(ApiProduct product, this.quantity)
      : super(product.product, product.nutriments);

  int quantity;

  int get id => super.hashCode;

  @override
  int get hashCode => super.hashCode ^ quantity.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ProductCalculator &&
        other.quantity == quantity &&
        other.nutriments == super.nutriments &&
        other.product == super.product;
  }
}

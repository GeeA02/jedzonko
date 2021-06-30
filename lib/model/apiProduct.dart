import 'package:jedzonko/model/nutriments.dart';
import 'package:jedzonko/model/productInfo.dart';

class ApiProduct {
  ProductInfo productInfo;
  Nutriments? nutriments;
  String? nutriscore;

  ApiProduct(this.productInfo, this.nutriments, this.nutriscore);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ApiProduct &&
        other.productInfo == productInfo &&
        other.nutriments == nutriments &&
        other.nutriscore == nutriscore;
  }

  @override
  int get hashCode =>
      productInfo.hashCode ^ nutriments.hashCode ^ nutriscore.hashCode;
}

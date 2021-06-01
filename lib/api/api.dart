import 'package:http/http.dart' as http;
import 'package:jedzonko/model/apiproduct.dart';
import 'dart:convert';
import 'package:jedzonko/model/nutriments.dart';
import 'package:jedzonko/model/product.dart';

class API {
  static Future<ApiProduct> fetchApiProduct(String barcode) async {
    final response = await http.get(Uri.https(
        'world.openfoodfacts.org', '/api/v0/product/' + barcode + '.json'));

    if (response.statusCode == 200) {
      Map json = jsonDecode(response.body);
      if (json['status'] == 0) {
        //tu trzeba coś innego przygotować pewnie xd
        throw Exception('Produktu nie ma w bazie');
      } else {
        return ApiProduct(Product.fromJson(jsonEncode(json)),
            Nutriments.fromMap(json['product']['nutriments']));
      }
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Problem z zapytaniem');
    }
  }
}

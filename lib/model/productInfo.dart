import 'dart:convert';

import 'package:intl/intl.dart';

class ProductInfo {
  String? barcode;
  String name;
  String? imageUrl;
  DateTime _date;

  String getDate() {
    final f = new DateFormat('dd/MM/yyyy HH:mm');
    return f.format(_date);
  }

  ProductInfo(
    this.barcode,
    this.name,
    this.imageUrl,
    this._date,
  );

  ProductInfo copyWith({
    String? barcode,
    String? name,
    String? imageUrl,
    DateTime? date,
  }) {
    return ProductInfo(
      barcode ?? this.barcode,
      name ?? this.name,
      imageUrl ?? this.imageUrl,
      date ?? this._date,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'barcode': barcode,
      'name': name,
      'imageUrl': imageUrl,
      '_date': _date,
    };
  }

  factory ProductInfo.fromMap(Map<String, dynamic> map) {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day);
    return ProductInfo(
        map['code'], map['product']['product_name_pl'], map['image_url'], date);
  }

  String toJson() => json.encode(toMap());

  factory ProductInfo.fromJson(String source) =>
      ProductInfo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductInfo (barcode: $barcode, name: $name, imageUrl: $imageUrl, _date: $_date)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductInfo &&
        other.barcode == barcode &&
        other.name == name &&
        other.imageUrl == imageUrl &&
        other._date == _date;
  }

  @override
  int get hashCode {
    return barcode.hashCode ^
        name.hashCode ^
        imageUrl.hashCode ^
        _date.hashCode;
  }
}

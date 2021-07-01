import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

part 'productInfo.g.dart';

@HiveType(typeId: 3)
class ProductInfo {
  @HiveField(0)
  String barcode;
  @HiveField(1)
  String name;
  @HiveField(2)
  String? imageUrl;
  @HiveField(3)
  DateTime _date;

  String getDate() {
    final f = new DateFormat('dd/MM/yyyy HH:mm');
    final string = f.format(_date);
    return string;
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
    DateTime date = new DateTime(now.year, now.month, now.day, now.hour, now.minute);
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

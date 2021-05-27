import 'dart:convert';
import 'package:intl/intl.dart';

class Product {
  String? barcode;
  String name;
  String? imageUrl;
  DateTime _date;

  String getDate() {
    final f = new DateFormat('dd/MM/yyyy HH:mm');
    return f.format(_date);
  }

  Product(
    this.barcode,
    this.name,
    this.imageUrl,
    this._date,
  );

  Product copyWith({
    String? barcode,
    String? name,
    String? imageUrl,
    DateTime? date,
  }) {
    return Product(
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

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      map['barcode'],
      map['name'],
      map['imageUrl'],
      map['_date'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(barcode: $barcode, name: $name, imageUrl: $imageUrl, _date: $_date)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
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

import 'dart:convert';

class Product {
  String? barcode;
  String name;
  String? imageUrl;
  String date;

  Product(
    this.barcode,
    this.name,
    this.imageUrl,
    this.date,
  );

  Product copyWith({
    String? barcode,
    String? name,
    String? imageUrl,
    String? date,
  }) {
    return Product(
      barcode ?? this.barcode,
      name ?? this.name,
      imageUrl ?? this.imageUrl,
      date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'barcode': barcode,
      'name': name,
      'imageUrl': imageUrl,
      'date': date,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      map['barcode'],
      map['name'],
      map['imageUrl'],
      map['date'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) => Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(barcode: $barcode, name: $name, imageUrl: $imageUrl, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Product &&
      other.barcode == barcode &&
      other.name == name &&
      other.imageUrl == imageUrl &&
      other.date == date;
  }

  @override
  int get hashCode {
    return barcode.hashCode ^
      name.hashCode ^
      imageUrl.hashCode ^
      date.hashCode;
  }
}

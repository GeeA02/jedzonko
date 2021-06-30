// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_calculator.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductCalculatorAdapter extends TypeAdapter<ProductCalculator> {
  @override
  final int typeId = 2;

  @override
  ProductCalculator read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductCalculator(
      fields[0] as ProductInfo,
      fields[1] as int,
      fields[3] as int,
      fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProductCalculator obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.productInfo)
      ..writeByte(1)
      ..write(obj.quantity)
      ..writeByte(2)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.kcal);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductCalculatorAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productHistory.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductHistoryAdapter extends TypeAdapter<ProductHistory> {
  @override
  final int typeId = 1;

  @override
  ProductHistory read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductHistory(
      fields[0] as ProductInfo,
      fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ProductHistory obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.productInfo)
      ..writeByte(2)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductHistoryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

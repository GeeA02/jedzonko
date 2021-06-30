// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productInfo.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductInfoAdapter extends TypeAdapter<ProductInfo> {
  @override
  final int typeId = 3;

  @override
  ProductInfo read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductInfo(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String?,
      fields[3] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, ProductInfo obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.barcode)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.imageUrl)
      ..writeByte(3)
      ..write(obj._date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

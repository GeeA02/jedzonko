// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiProduct.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ApiProductAdapter extends TypeAdapter<ApiProduct> {
  @override
  final int typeId = 1;

  @override
  ApiProduct read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ApiProduct(
      fields[0] as Product,
      fields[1] as Nutriments?,
    );
  }

  @override
  void write(BinaryWriter writer, ApiProduct obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.product)
      ..writeByte(1)
      ..write(obj.nutriments);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ApiProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

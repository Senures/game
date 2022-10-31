// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ChooseModelAdapter extends TypeAdapter<ChooseModel> {
  @override
  final int typeId = 0;

  @override
  ChooseModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChooseModel(
      icon: fields[0] as String,
      color: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ChooseModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.icon)
      ..writeByte(1)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChooseModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

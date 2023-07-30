// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserInfoHiveAdapter extends TypeAdapter<UserInfoHive> {
  @override
  final int typeId = 1;

  @override
  UserInfoHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserInfoHive(
      gender: fields[2] as String?,
      dateOfBirth: fields[1] as String?,
      name: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, UserInfoHive obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.dateOfBirth)
      ..writeByte(2)
      ..write(obj.gender);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserInfoHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

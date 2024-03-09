// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'engine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EngineImpl _$$EngineImplFromJson(Map<String, dynamic> json) => _$EngineImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$EngineImplToJson(_$EngineImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  return val;
}

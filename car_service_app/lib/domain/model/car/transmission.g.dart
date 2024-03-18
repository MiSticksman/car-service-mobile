// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transmission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransmissionImpl _$$TransmissionImplFromJson(Map<String, dynamic> json) =>
    _$TransmissionImpl(
      id: json['id'] as int,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$TransmissionImplToJson(_$TransmissionImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  return val;
}

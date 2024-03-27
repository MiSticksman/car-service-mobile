// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarDetailsImpl _$$CarDetailsImplFromJson(Map<String, dynamic> json) =>
    _$CarDetailsImpl(
      id: json['id'] as int,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$CarDetailsImplToJson(_$CarDetailsImpl instance) {
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

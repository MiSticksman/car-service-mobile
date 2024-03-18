// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_brand.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarBrandImpl _$$CarBrandImplFromJson(Map<String, dynamic> json) =>
    _$CarBrandImpl(
      id: json['id'] as int,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$CarBrandImplToJson(_$CarBrandImpl instance) {
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

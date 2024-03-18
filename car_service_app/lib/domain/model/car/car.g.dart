// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarImpl _$$CarImplFromJson(Map<String, dynamic> json) => _$CarImpl(
      id: json['id'] as int,
      brand: json['brand'] as String?,
      model: json['model'] as String?,
      year: json['year'] as int?,
    );

Map<String, dynamic> _$$CarImplToJson(_$CarImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('brand', instance.brand);
  writeNotNull('model', instance.model);
  writeNotNull('year', instance.year);
  return val;
}

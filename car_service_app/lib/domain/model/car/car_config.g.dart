// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarConfigImpl _$$CarConfigImplFromJson(Map<String, dynamic> json) =>
    _$CarConfigImpl(
      id: json['id'] as int,
      engine: Engine.fromJson(json['engine'] as Map<String, dynamic>),
      transmission:
          Transmission.fromJson(json['transmission'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CarConfigImplToJson(_$CarConfigImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'engine': instance.engine.toJson(),
      'transmission': instance.transmission.toJson(),
    };

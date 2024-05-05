// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceDtoImpl _$$ServiceDtoImplFromJson(Map<String, dynamic> json) =>
    _$ServiceDtoImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      city: json['city'] as int?,
      cityName: json['cityName'] as String?,
      address: json['address'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      workHours: json['workHours'] as String?,
      lat: json['lat'] as num?,
      lon: json['lon'] as num?,
      distance: json['distance'] as num?,
    );

Map<String, dynamic> _$$ServiceDtoImplToJson(_$ServiceDtoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('city', instance.city);
  writeNotNull('cityName', instance.cityName);
  writeNotNull('address', instance.address);
  writeNotNull('phone', instance.phone);
  writeNotNull('email', instance.email);
  writeNotNull('workHours', instance.workHours);
  writeNotNull('lat', instance.lat);
  writeNotNull('lon', instance.lon);
  writeNotNull('distance', instance.distance);
  return val;
}

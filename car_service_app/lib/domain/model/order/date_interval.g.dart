// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_interval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DateIntervalImpl _$$DateIntervalImplFromJson(Map<String, dynamic> json) =>
    _$DateIntervalImpl(
      id: json['id'] as String?,
      data: json['data'] as String?,
      timeIntervals: (json['timeIntervals'] as List<dynamic>?)
          ?.map((e) => TimeInterval.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DateIntervalImplToJson(_$DateIntervalImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('data', instance.data);
  writeNotNull(
      'timeIntervals', instance.timeIntervals?.map((e) => e.toJson()).toList());
  return val;
}

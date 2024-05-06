// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_interval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeIntervalImpl _$$TimeIntervalImplFromJson(Map<String, dynamic> json) =>
    _$TimeIntervalImpl(
      id: json['id'] as String?,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$$TimeIntervalImplToJson(_$TimeIntervalImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('data', instance.data);
  return val;
}

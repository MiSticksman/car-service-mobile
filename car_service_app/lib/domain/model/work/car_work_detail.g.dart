// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_work_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CarWorkDetailImpl _$$CarWorkDetailImplFromJson(Map<String, dynamic> json) =>
    _$CarWorkDetailImpl(
      id: json['id'] as int,
      name: json['name'] as String?,
      picture: json['picture'] as String?,
      url: json['url'] as String,
      price: json['price'] as int,
      isOriginal: json['isOriginal'] as bool?,
    );

Map<String, dynamic> _$$CarWorkDetailImplToJson(_$CarWorkDetailImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('picture', instance.picture);
  val['url'] = instance.url;
  val['price'] = instance.price;
  writeNotNull('isOriginal', instance.isOriginal);
  return val;
}

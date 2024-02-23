// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileInfoImpl _$$ProfileInfoImplFromJson(Map<String, dynamic> json) =>
    _$ProfileInfoImpl(
      id: json['id'] as String?,
      phone: json['phone'] as String?,
      phoneVerified: json['phone_verified'] as bool?,
      email: json['email'] as String?,
      emailVerified: json['email_verified'] as bool?,
      name: json['name'] as String?,
      lastName: json['last_name'] as String?,
      secondName: json['second_name'] as String?,
      birthdate: json['birthday'] as String?,
      cars: (json['cars'] as List<dynamic>?)
          ?.map((e) => Car.fromJson(e as Map<String, dynamic>))
          .toList(),
      sex: json['sex'] as int?,
      age: json['age'] as int?,
      avatar: json['avatar'] as String?,
      isNew: json['is_new'] as int?,
      isSmsSend: json['is_sms_send'] as int?,
      isEmailSend: json['is_email_send'] as int?,
    );

Map<String, dynamic> _$$ProfileInfoImplToJson(_$ProfileInfoImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('phone', instance.phone);
  writeNotNull('phone_verified', instance.phoneVerified);
  writeNotNull('email', instance.email);
  writeNotNull('email_verified', instance.emailVerified);
  writeNotNull('name', instance.name);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('second_name', instance.secondName);
  writeNotNull('birthday', instance.birthdate);
  writeNotNull('cars', instance.cars?.map((e) => e.toJson()).toList());
  writeNotNull('sex', instance.sex);
  writeNotNull('age', instance.age);
  writeNotNull('avatar', instance.avatar);
  writeNotNull('is_new', instance.isNew);
  writeNotNull('is_sms_send', instance.isSmsSend);
  writeNotNull('is_email_send', instance.isEmailSend);
  return val;
}

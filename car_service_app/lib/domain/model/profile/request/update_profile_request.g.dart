// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateProfileRequestImpl _$$UpdateProfileRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateProfileRequestImpl(
      name: json['name'] as String?,
      lastName: json['last_name'] as String?,
      secondName: json['second_name'] as String?,
      birthdate: json['birthday'] as String?,
      sex: json['sex'] as int?,
      age: json['age'] as int?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      avatar: json['avatar'] as String?,
      isSmsSend: json['is_sms_send'] as int?,
      isEmailSend: json['is_email_send'] as int?,
    );

Map<String, dynamic> _$$UpdateProfileRequestImplToJson(
    _$UpdateProfileRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('second_name', instance.secondName);
  writeNotNull('birthday', instance.birthdate);
  writeNotNull('sex', instance.sex);
  writeNotNull('age', instance.age);
  writeNotNull('phone', instance.phone);
  writeNotNull('email', instance.email);
  writeNotNull('avatar', instance.avatar);
  writeNotNull('is_sms_send', instance.isSmsSend);
  writeNotNull('is_email_send', instance.isEmailSend);
  return val;
}

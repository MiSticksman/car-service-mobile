// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_auth_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmailAuthRequestImpl _$$EmailAuthRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$EmailAuthRequestImpl(
      name: json['name'] as String?,
      lastName: json['last_name'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$EmailAuthRequestImplToJson(
    _$EmailAuthRequestImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('email', instance.email);
  writeNotNull('password', instance.password);
  return val;
}

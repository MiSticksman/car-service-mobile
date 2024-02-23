// ignore_for_file: invalid_annotation_target

import 'package:car_service_app/domain/model/car/car.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_info.g.dart';
part 'profile_info.freezed.dart';


@freezed
class ProfileInfo with _$ProfileInfo {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory ProfileInfo({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'phone_verified') bool? phoneVerified,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'email_verified') bool? emailVerified,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'second_name') String? secondName,
    @JsonKey(name: 'birthday') String? birthdate,
    @JsonKey(name: 'cars') List<Car>? cars,
    @JsonKey(name: 'sex') int? sex,
    @JsonKey(name: 'age') int? age,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'is_new') int? isNew,
    @JsonKey(name: 'is_sms_send') int? isSmsSend,
    @JsonKey(name: 'is_email_send') int? isEmailSend,
  }) = _ProfileInfo;

  factory ProfileInfo.fromJson(Map<String, dynamic> json) =>
      _$ProfileInfoFromJson(json);
}

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_profile_request.g.dart';

part 'update_profile_request.freezed.dart';

@freezed
class UpdateProfileRequest with _$UpdateProfileRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory UpdateProfileRequest({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'second_name') String? secondName,
    @JsonKey(name: 'birthday') String? birthdate,
    @JsonKey(name: 'sex') int? sex,
    @JsonKey(name: 'age') int? age,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'avatar') String? avatar,
    @JsonKey(name: 'is_sms_send') int? isSmsSend,
    @JsonKey(name: 'is_email_send') int? isEmailSend,
  }) = _UpdateProfileRequest;

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) => _$UpdateProfileRequestFromJson(json);
}

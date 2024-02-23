// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';


part 'email_auth_request.g.dart';
part 'email_auth_request.freezed.dart';

@freezed
class EmailAuthRequest with _$EmailAuthRequest {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory EmailAuthRequest({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
  }) = _EmailAuthRequest;

  factory EmailAuthRequest.fromJson(Map<String, dynamic> json) => _$EmailAuthRequestFromJson(json);
}

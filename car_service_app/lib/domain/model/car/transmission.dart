// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'transmission.freezed.dart';
part 'transmission.g.dart';


@freezed
class Transmission with _$Transmission {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory Transmission({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') String? name,
  }) = _Transmission;

  factory Transmission.fromJson(Map<String, dynamic> json) => _$TransmissionFromJson(json);
}
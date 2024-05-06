// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_interval.freezed.dart';
part 'time_interval.g.dart';

@freezed
class TimeInterval with _$TimeInterval {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory TimeInterval({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'data') String? data,
  }) = _TimeInterval;

  factory TimeInterval.fromJson(Map<String, dynamic> json) =>
      _$TimeIntervalFromJson(json);
}

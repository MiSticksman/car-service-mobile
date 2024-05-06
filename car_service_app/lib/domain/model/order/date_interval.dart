// ignore_for_file: invalid_annotation_target

import 'package:car_service_app/domain/model/order/time_interval.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'date_interval.freezed.dart';
part 'date_interval.g.dart';

@freezed
class DateInterval with _$DateInterval {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory DateInterval({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'data') String? data,
    @JsonKey(name: 'timeIntervals') List<TimeInterval>? timeIntervals,
  }) = _DateInterval;

  factory DateInterval.fromJson(Map<String, dynamic> json) =>
      _$DateIntervalFromJson(json);
}

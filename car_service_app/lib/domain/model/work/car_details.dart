// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_details.freezed.dart';
part 'car_details.g.dart';


@freezed
class CarDetails with _$CarDetails {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CarDetails({
  @JsonKey(name: 'id') required int id,
  @JsonKey(name: 'name') String? name,
}) = _CarDetails;

factory CarDetails.fromJson(Map<String, dynamic> json) => _$CarDetailsFromJson(json);
}
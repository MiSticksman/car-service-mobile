// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'car.freezed.dart';
part 'car.g.dart';


@freezed
class Car with _$Car {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory Car({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'brand') String? brand,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}
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
     @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'brand') String? brand,
    @JsonKey(name: 'model') String? model,
    @JsonKey(name: 'year') int? year,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}
// ignore_for_file: invalid_annotation_target

import 'package:car_service_app/domain/model/car/car_config.dart';
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
    required int id,
    CarConfig? carConfig,
    String? brand,
    String? model,
    int? year,
  }) = _Car;

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);
}

// ignore_for_file: invalid_annotation_target

import 'package:car_service_app/domain/model/car/engine.dart';
import 'package:car_service_app/domain/model/car/transmission.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_config.freezed.dart';
part 'car_config.g.dart';


@freezed
class CarConfig with _$CarConfig {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CarConfig({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'engine') required Engine engine,
    @JsonKey(name: 'transmission') required Transmission transmission,
  }) = _CarConfig;

  factory CarConfig.fromJson(Map<String, dynamic> json) => _$CarConfigFromJson(json);
}
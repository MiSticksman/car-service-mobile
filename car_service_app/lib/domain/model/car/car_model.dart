// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_model.freezed.dart';
part 'car_model.g.dart';


@freezed
class CarModel with _$CarModel {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CarModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') String? name,
  }) = _CarModel;

  factory CarModel.fromJson(Map<String, dynamic> json) => _$CarModelFromJson(json);
}
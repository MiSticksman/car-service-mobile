// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_brand.freezed.dart';
part 'car_brand.g.dart';


@freezed
class CarBrand with _$CarBrand {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CarBrand({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') String? name,
  }) = _CarBrand;

  factory CarBrand.fromJson(Map<String, dynamic> json) => _$CarBrandFromJson(json);
}
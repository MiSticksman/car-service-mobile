// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_dto.freezed.dart';
part 'service_dto.g.dart';

@freezed
class ServiceDto with _$ServiceDto {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory ServiceDto({
    int? id,
    String? name,
    String? description,
    int? city,
    String? cityName,
    String? address,
    String? phone,
    String? email,
    String? workHours,
    num? lat,
    num? lon,
    num? distance,
  }) = _ServiceDto;

  factory ServiceDto.fromJson(Map<String, dynamic> json) =>
      _$ServiceDtoFromJson(json);
}

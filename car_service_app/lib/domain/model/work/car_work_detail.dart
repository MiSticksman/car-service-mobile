// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';


part 'car_work_detail.freezed.dart';
part 'car_work_detail.g.dart';

@freezed
class CarWorkDetail with _$CarWorkDetail {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory CarWorkDetail({
    required int id,
    String? name,
    String? picture,
    required String url,
    required int price,
    bool? isOriginal,
  }) = _CarWorkDetail;

  factory CarWorkDetail.fromJson(Map<String, dynamic> json) => _$CarWorkDetailFromJson(json);
}
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'work.freezed.dart';
part 'work.g.dart';


@freezed
class Work with _$Work {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory Work({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') String? name,
  }) = _Work;

  factory Work.fromJson(Map<String, dynamic> json) => _$WorkFromJson(json);
}
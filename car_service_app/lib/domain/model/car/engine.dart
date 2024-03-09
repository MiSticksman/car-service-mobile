// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'engine.freezed.dart';
part 'engine.g.dart';


@freezed
class Engine with _$Engine {
  @JsonSerializable(
    explicitToJson: true,
    includeIfNull: false,
  )
  const factory Engine({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
  }) = _Engine;

  factory Engine.fromJson(Map<String, dynamic> json) => _$EngineFromJson(json);
}
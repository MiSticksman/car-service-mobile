// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_interval.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimeInterval _$TimeIntervalFromJson(Map<String, dynamic> json) {
  return _TimeInterval.fromJson(json);
}

/// @nodoc
mixin _$TimeInterval {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  String? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimeIntervalCopyWith<TimeInterval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeIntervalCopyWith<$Res> {
  factory $TimeIntervalCopyWith(
          TimeInterval value, $Res Function(TimeInterval) then) =
      _$TimeIntervalCopyWithImpl<$Res, TimeInterval>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'data') String? data});
}

/// @nodoc
class _$TimeIntervalCopyWithImpl<$Res, $Val extends TimeInterval>
    implements $TimeIntervalCopyWith<$Res> {
  _$TimeIntervalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeIntervalImplCopyWith<$Res>
    implements $TimeIntervalCopyWith<$Res> {
  factory _$$TimeIntervalImplCopyWith(
          _$TimeIntervalImpl value, $Res Function(_$TimeIntervalImpl) then) =
      __$$TimeIntervalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id, @JsonKey(name: 'data') String? data});
}

/// @nodoc
class __$$TimeIntervalImplCopyWithImpl<$Res>
    extends _$TimeIntervalCopyWithImpl<$Res, _$TimeIntervalImpl>
    implements _$$TimeIntervalImplCopyWith<$Res> {
  __$$TimeIntervalImplCopyWithImpl(
      _$TimeIntervalImpl _value, $Res Function(_$TimeIntervalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? data = freezed,
  }) {
    return _then(_$TimeIntervalImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$TimeIntervalImpl implements _TimeInterval {
  const _$TimeIntervalImpl(
      {@JsonKey(name: 'id') this.id, @JsonKey(name: 'data') this.data});

  factory _$TimeIntervalImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeIntervalImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'data')
  final String? data;

  @override
  String toString() {
    return 'TimeInterval(id: $id, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeIntervalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeIntervalImplCopyWith<_$TimeIntervalImpl> get copyWith =>
      __$$TimeIntervalImplCopyWithImpl<_$TimeIntervalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeIntervalImplToJson(
      this,
    );
  }
}

abstract class _TimeInterval implements TimeInterval {
  const factory _TimeInterval(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'data') final String? data}) = _$TimeIntervalImpl;

  factory _TimeInterval.fromJson(Map<String, dynamic> json) =
      _$TimeIntervalImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'data')
  String? get data;
  @override
  @JsonKey(ignore: true)
  _$$TimeIntervalImplCopyWith<_$TimeIntervalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_interval.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DateInterval _$DateIntervalFromJson(Map<String, dynamic> json) {
  return _DateInterval.fromJson(json);
}

/// @nodoc
mixin _$DateInterval {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  String? get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'timeIntervals')
  List<TimeInterval>? get timeIntervals => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateIntervalCopyWith<DateInterval> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateIntervalCopyWith<$Res> {
  factory $DateIntervalCopyWith(
          DateInterval value, $Res Function(DateInterval) then) =
      _$DateIntervalCopyWithImpl<$Res, DateInterval>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'data') String? data,
      @JsonKey(name: 'timeIntervals') List<TimeInterval>? timeIntervals});
}

/// @nodoc
class _$DateIntervalCopyWithImpl<$Res, $Val extends DateInterval>
    implements $DateIntervalCopyWith<$Res> {
  _$DateIntervalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? data = freezed,
    Object? timeIntervals = freezed,
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
      timeIntervals: freezed == timeIntervals
          ? _value.timeIntervals
          : timeIntervals // ignore: cast_nullable_to_non_nullable
              as List<TimeInterval>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateIntervalImplCopyWith<$Res>
    implements $DateIntervalCopyWith<$Res> {
  factory _$$DateIntervalImplCopyWith(
          _$DateIntervalImpl value, $Res Function(_$DateIntervalImpl) then) =
      __$$DateIntervalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'data') String? data,
      @JsonKey(name: 'timeIntervals') List<TimeInterval>? timeIntervals});
}

/// @nodoc
class __$$DateIntervalImplCopyWithImpl<$Res>
    extends _$DateIntervalCopyWithImpl<$Res, _$DateIntervalImpl>
    implements _$$DateIntervalImplCopyWith<$Res> {
  __$$DateIntervalImplCopyWithImpl(
      _$DateIntervalImpl _value, $Res Function(_$DateIntervalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? data = freezed,
    Object? timeIntervals = freezed,
  }) {
    return _then(_$DateIntervalImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
      timeIntervals: freezed == timeIntervals
          ? _value._timeIntervals
          : timeIntervals // ignore: cast_nullable_to_non_nullable
              as List<TimeInterval>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$DateIntervalImpl implements _DateInterval {
  const _$DateIntervalImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'data') this.data,
      @JsonKey(name: 'timeIntervals') final List<TimeInterval>? timeIntervals})
      : _timeIntervals = timeIntervals;

  factory _$DateIntervalImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateIntervalImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'data')
  final String? data;
  final List<TimeInterval>? _timeIntervals;
  @override
  @JsonKey(name: 'timeIntervals')
  List<TimeInterval>? get timeIntervals {
    final value = _timeIntervals;
    if (value == null) return null;
    if (_timeIntervals is EqualUnmodifiableListView) return _timeIntervals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DateInterval(id: $id, data: $data, timeIntervals: $timeIntervals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateIntervalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality()
                .equals(other._timeIntervals, _timeIntervals));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, data,
      const DeepCollectionEquality().hash(_timeIntervals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateIntervalImplCopyWith<_$DateIntervalImpl> get copyWith =>
      __$$DateIntervalImplCopyWithImpl<_$DateIntervalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateIntervalImplToJson(
      this,
    );
  }
}

abstract class _DateInterval implements DateInterval {
  const factory _DateInterval(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'data') final String? data,
      @JsonKey(name: 'timeIntervals')
      final List<TimeInterval>? timeIntervals}) = _$DateIntervalImpl;

  factory _DateInterval.fromJson(Map<String, dynamic> json) =
      _$DateIntervalImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'data')
  String? get data;
  @override
  @JsonKey(name: 'timeIntervals')
  List<TimeInterval>? get timeIntervals;
  @override
  @JsonKey(ignore: true)
  _$$DateIntervalImplCopyWith<_$DateIntervalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

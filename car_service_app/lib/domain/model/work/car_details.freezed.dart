// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CarDetails _$CarDetailsFromJson(Map<String, dynamic> json) {
  return _CarDetails.fromJson(json);
}

/// @nodoc
mixin _$CarDetails {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarDetailsCopyWith<CarDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarDetailsCopyWith<$Res> {
  factory $CarDetailsCopyWith(
          CarDetails value, $Res Function(CarDetails) then) =
      _$CarDetailsCopyWithImpl<$Res, CarDetails>;
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$CarDetailsCopyWithImpl<$Res, $Val extends CarDetails>
    implements $CarDetailsCopyWith<$Res> {
  _$CarDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarDetailsImplCopyWith<$Res>
    implements $CarDetailsCopyWith<$Res> {
  factory _$$CarDetailsImplCopyWith(
          _$CarDetailsImpl value, $Res Function(_$CarDetailsImpl) then) =
      __$$CarDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$CarDetailsImplCopyWithImpl<$Res>
    extends _$CarDetailsCopyWithImpl<$Res, _$CarDetailsImpl>
    implements _$$CarDetailsImplCopyWith<$Res> {
  __$$CarDetailsImplCopyWithImpl(
      _$CarDetailsImpl _value, $Res Function(_$CarDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_$CarDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$CarDetailsImpl implements _CarDetails {
  const _$CarDetailsImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') this.name});

  factory _$CarDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarDetailsImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'CarDetails(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarDetailsImplCopyWith<_$CarDetailsImpl> get copyWith =>
      __$$CarDetailsImplCopyWithImpl<_$CarDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarDetailsImplToJson(
      this,
    );
  }
}

abstract class _CarDetails implements CarDetails {
  const factory _CarDetails(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') final String? name}) = _$CarDetailsImpl;

  factory _CarDetails.fromJson(Map<String, dynamic> json) =
      _$CarDetailsImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$CarDetailsImplCopyWith<_$CarDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

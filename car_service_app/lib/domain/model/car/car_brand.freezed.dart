// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_brand.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CarBrand _$CarBrandFromJson(Map<String, dynamic> json) {
  return _CarBrand.fromJson(json);
}

/// @nodoc
mixin _$CarBrand {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'pictureUrl')
  String? get pictureUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarBrandCopyWith<CarBrand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarBrandCopyWith<$Res> {
  factory $CarBrandCopyWith(CarBrand value, $Res Function(CarBrand) then) =
      _$CarBrandCopyWithImpl<$Res, CarBrand>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'pictureUrl') String? pictureUrl});
}

/// @nodoc
class _$CarBrandCopyWithImpl<$Res, $Val extends CarBrand>
    implements $CarBrandCopyWith<$Res> {
  _$CarBrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? pictureUrl = freezed,
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
      pictureUrl: freezed == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarBrandImplCopyWith<$Res>
    implements $CarBrandCopyWith<$Res> {
  factory _$$CarBrandImplCopyWith(
          _$CarBrandImpl value, $Res Function(_$CarBrandImpl) then) =
      __$$CarBrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'pictureUrl') String? pictureUrl});
}

/// @nodoc
class __$$CarBrandImplCopyWithImpl<$Res>
    extends _$CarBrandCopyWithImpl<$Res, _$CarBrandImpl>
    implements _$$CarBrandImplCopyWith<$Res> {
  __$$CarBrandImplCopyWithImpl(
      _$CarBrandImpl _value, $Res Function(_$CarBrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? pictureUrl = freezed,
  }) {
    return _then(_$CarBrandImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pictureUrl: freezed == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$CarBrandImpl implements _CarBrand {
  const _$CarBrandImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'pictureUrl') this.pictureUrl});

  factory _$CarBrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarBrandImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'pictureUrl')
  final String? pictureUrl;

  @override
  String toString() {
    return 'CarBrand(id: $id, name: $name, pictureUrl: $pictureUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarBrandImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pictureUrl, pictureUrl) ||
                other.pictureUrl == pictureUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, pictureUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarBrandImplCopyWith<_$CarBrandImpl> get copyWith =>
      __$$CarBrandImplCopyWithImpl<_$CarBrandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarBrandImplToJson(
      this,
    );
  }
}

abstract class _CarBrand implements CarBrand {
  const factory _CarBrand(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'pictureUrl') final String? pictureUrl}) = _$CarBrandImpl;

  factory _CarBrand.fromJson(Map<String, dynamic> json) =
      _$CarBrandImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'pictureUrl')
  String? get pictureUrl;
  @override
  @JsonKey(ignore: true)
  _$$CarBrandImplCopyWith<_$CarBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

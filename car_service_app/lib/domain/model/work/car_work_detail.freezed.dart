// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_work_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CarWorkDetail _$CarWorkDetailFromJson(Map<String, dynamic> json) {
  return _CarWorkDetail.fromJson(json);
}

/// @nodoc
mixin _$CarWorkDetail {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  bool? get isOriginal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarWorkDetailCopyWith<CarWorkDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarWorkDetailCopyWith<$Res> {
  factory $CarWorkDetailCopyWith(
          CarWorkDetail value, $Res Function(CarWorkDetail) then) =
      _$CarWorkDetailCopyWithImpl<$Res, CarWorkDetail>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? picture,
      String url,
      int price,
      bool? isOriginal});
}

/// @nodoc
class _$CarWorkDetailCopyWithImpl<$Res, $Val extends CarWorkDetail>
    implements $CarWorkDetailCopyWith<$Res> {
  _$CarWorkDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? picture = freezed,
    Object? url = null,
    Object? price = null,
    Object? isOriginal = freezed,
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
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      isOriginal: freezed == isOriginal
          ? _value.isOriginal
          : isOriginal // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarWorkDetailImplCopyWith<$Res>
    implements $CarWorkDetailCopyWith<$Res> {
  factory _$$CarWorkDetailImplCopyWith(
          _$CarWorkDetailImpl value, $Res Function(_$CarWorkDetailImpl) then) =
      __$$CarWorkDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? picture,
      String url,
      int price,
      bool? isOriginal});
}

/// @nodoc
class __$$CarWorkDetailImplCopyWithImpl<$Res>
    extends _$CarWorkDetailCopyWithImpl<$Res, _$CarWorkDetailImpl>
    implements _$$CarWorkDetailImplCopyWith<$Res> {
  __$$CarWorkDetailImplCopyWithImpl(
      _$CarWorkDetailImpl _value, $Res Function(_$CarWorkDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? picture = freezed,
    Object? url = null,
    Object? price = null,
    Object? isOriginal = freezed,
  }) {
    return _then(_$CarWorkDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      isOriginal: freezed == isOriginal
          ? _value.isOriginal
          : isOriginal // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$CarWorkDetailImpl implements _CarWorkDetail {
  const _$CarWorkDetailImpl(
      {required this.id,
      this.name,
      this.picture,
      required this.url,
      required this.price,
      this.isOriginal});

  factory _$CarWorkDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarWorkDetailImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? picture;
  @override
  final String url;
  @override
  final int price;
  @override
  final bool? isOriginal;

  @override
  String toString() {
    return 'CarWorkDetail(id: $id, name: $name, picture: $picture, url: $url, price: $price, isOriginal: $isOriginal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarWorkDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isOriginal, isOriginal) ||
                other.isOriginal == isOriginal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, picture, url, price, isOriginal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarWorkDetailImplCopyWith<_$CarWorkDetailImpl> get copyWith =>
      __$$CarWorkDetailImplCopyWithImpl<_$CarWorkDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarWorkDetailImplToJson(
      this,
    );
  }
}

abstract class _CarWorkDetail implements CarWorkDetail {
  const factory _CarWorkDetail(
      {required final int id,
      final String? name,
      final String? picture,
      required final String url,
      required final int price,
      final bool? isOriginal}) = _$CarWorkDetailImpl;

  factory _CarWorkDetail.fromJson(Map<String, dynamic> json) =
      _$CarWorkDetailImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get picture;
  @override
  String get url;
  @override
  int get price;
  @override
  bool? get isOriginal;
  @override
  @JsonKey(ignore: true)
  _$$CarWorkDetailImplCopyWith<_$CarWorkDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

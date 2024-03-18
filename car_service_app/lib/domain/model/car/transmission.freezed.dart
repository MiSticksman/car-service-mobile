// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transmission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Transmission _$TransmissionFromJson(Map<String, dynamic> json) {
  return _Transmission.fromJson(json);
}

/// @nodoc
mixin _$Transmission {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransmissionCopyWith<Transmission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransmissionCopyWith<$Res> {
  factory $TransmissionCopyWith(
          Transmission value, $Res Function(Transmission) then) =
      _$TransmissionCopyWithImpl<$Res, Transmission>;
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$TransmissionCopyWithImpl<$Res, $Val extends Transmission>
    implements $TransmissionCopyWith<$Res> {
  _$TransmissionCopyWithImpl(this._value, this._then);

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
abstract class _$$TransmissionImplCopyWith<$Res>
    implements $TransmissionCopyWith<$Res> {
  factory _$$TransmissionImplCopyWith(
          _$TransmissionImpl value, $Res Function(_$TransmissionImpl) then) =
      __$$TransmissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$$TransmissionImplCopyWithImpl<$Res>
    extends _$TransmissionCopyWithImpl<$Res, _$TransmissionImpl>
    implements _$$TransmissionImplCopyWith<$Res> {
  __$$TransmissionImplCopyWithImpl(
      _$TransmissionImpl _value, $Res Function(_$TransmissionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_$TransmissionImpl(
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
class _$TransmissionImpl implements _Transmission {
  const _$TransmissionImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') this.name});

  factory _$TransmissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransmissionImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'Transmission(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransmissionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransmissionImplCopyWith<_$TransmissionImpl> get copyWith =>
      __$$TransmissionImplCopyWithImpl<_$TransmissionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransmissionImplToJson(
      this,
    );
  }
}

abstract class _Transmission implements Transmission {
  const factory _Transmission(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'name') final String? name}) = _$TransmissionImpl;

  factory _Transmission.fromJson(Map<String, dynamic> json) =
      _$TransmissionImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$TransmissionImplCopyWith<_$TransmissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

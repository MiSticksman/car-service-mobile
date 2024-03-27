// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'car_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CarConfig _$CarConfigFromJson(Map<String, dynamic> json) {
  return _CarConfig.fromJson(json);
}

/// @nodoc
mixin _$CarConfig {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'engine')
  Engine get engine => throw _privateConstructorUsedError;
  @JsonKey(name: 'transmission')
  Transmission get transmission => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarConfigCopyWith<CarConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarConfigCopyWith<$Res> {
  factory $CarConfigCopyWith(CarConfig value, $Res Function(CarConfig) then) =
      _$CarConfigCopyWithImpl<$Res, CarConfig>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'engine') Engine engine,
      @JsonKey(name: 'transmission') Transmission transmission});

  $EngineCopyWith<$Res> get engine;
  $TransmissionCopyWith<$Res> get transmission;
}

/// @nodoc
class _$CarConfigCopyWithImpl<$Res, $Val extends CarConfig>
    implements $CarConfigCopyWith<$Res> {
  _$CarConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? engine = null,
    Object? transmission = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      engine: null == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as Engine,
      transmission: null == transmission
          ? _value.transmission
          : transmission // ignore: cast_nullable_to_non_nullable
              as Transmission,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EngineCopyWith<$Res> get engine {
    return $EngineCopyWith<$Res>(_value.engine, (value) {
      return _then(_value.copyWith(engine: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TransmissionCopyWith<$Res> get transmission {
    return $TransmissionCopyWith<$Res>(_value.transmission, (value) {
      return _then(_value.copyWith(transmission: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarConfigImplCopyWith<$Res>
    implements $CarConfigCopyWith<$Res> {
  factory _$$CarConfigImplCopyWith(
          _$CarConfigImpl value, $Res Function(_$CarConfigImpl) then) =
      __$$CarConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'engine') Engine engine,
      @JsonKey(name: 'transmission') Transmission transmission});

  @override
  $EngineCopyWith<$Res> get engine;
  @override
  $TransmissionCopyWith<$Res> get transmission;
}

/// @nodoc
class __$$CarConfigImplCopyWithImpl<$Res>
    extends _$CarConfigCopyWithImpl<$Res, _$CarConfigImpl>
    implements _$$CarConfigImplCopyWith<$Res> {
  __$$CarConfigImplCopyWithImpl(
      _$CarConfigImpl _value, $Res Function(_$CarConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? engine = null,
    Object? transmission = null,
  }) {
    return _then(_$CarConfigImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      engine: null == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as Engine,
      transmission: null == transmission
          ? _value.transmission
          : transmission // ignore: cast_nullable_to_non_nullable
              as Transmission,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$CarConfigImpl implements _CarConfig {
  const _$CarConfigImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'engine') required this.engine,
      @JsonKey(name: 'transmission') required this.transmission});

  factory _$CarConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarConfigImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'engine')
  final Engine engine;
  @override
  @JsonKey(name: 'transmission')
  final Transmission transmission;

  @override
  String toString() {
    return 'CarConfig(id: $id, engine: $engine, transmission: $transmission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarConfigImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.engine, engine) || other.engine == engine) &&
            (identical(other.transmission, transmission) ||
                other.transmission == transmission));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, engine, transmission);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarConfigImplCopyWith<_$CarConfigImpl> get copyWith =>
      __$$CarConfigImplCopyWithImpl<_$CarConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarConfigImplToJson(
      this,
    );
  }
}

abstract class _CarConfig implements CarConfig {
  const factory _CarConfig(
      {@JsonKey(name: 'id') required final int id,
      @JsonKey(name: 'engine') required final Engine engine,
      @JsonKey(name: 'transmission')
      required final Transmission transmission}) = _$CarConfigImpl;

  factory _CarConfig.fromJson(Map<String, dynamic> json) =
      _$CarConfigImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'engine')
  Engine get engine;
  @override
  @JsonKey(name: 'transmission')
  Transmission get transmission;
  @override
  @JsonKey(ignore: true)
  _$$CarConfigImplCopyWith<_$CarConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

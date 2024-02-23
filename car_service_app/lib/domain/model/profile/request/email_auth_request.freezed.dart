// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_auth_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EmailAuthRequest _$EmailAuthRequestFromJson(Map<String, dynamic> json) {
  return _EmailAuthRequest.fromJson(json);
}

/// @nodoc
mixin _$EmailAuthRequest {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailAuthRequestCopyWith<EmailAuthRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailAuthRequestCopyWith<$Res> {
  factory $EmailAuthRequestCopyWith(
          EmailAuthRequest value, $Res Function(EmailAuthRequest) then) =
      _$EmailAuthRequestCopyWithImpl<$Res, EmailAuthRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class _$EmailAuthRequestCopyWithImpl<$Res, $Val extends EmailAuthRequest>
    implements $EmailAuthRequestCopyWith<$Res> {
  _$EmailAuthRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmailAuthRequestImplCopyWith<$Res>
    implements $EmailAuthRequestCopyWith<$Res> {
  factory _$$EmailAuthRequestImplCopyWith(_$EmailAuthRequestImpl value,
          $Res Function(_$EmailAuthRequestImpl) then) =
      __$$EmailAuthRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password});
}

/// @nodoc
class __$$EmailAuthRequestImplCopyWithImpl<$Res>
    extends _$EmailAuthRequestCopyWithImpl<$Res, _$EmailAuthRequestImpl>
    implements _$$EmailAuthRequestImplCopyWith<$Res> {
  __$$EmailAuthRequestImplCopyWithImpl(_$EmailAuthRequestImpl _value,
      $Res Function(_$EmailAuthRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? lastName = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$EmailAuthRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$EmailAuthRequestImpl implements _EmailAuthRequest {
  const _$EmailAuthRequestImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'password') this.password});

  factory _$EmailAuthRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmailAuthRequestImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'password')
  final String? password;

  @override
  String toString() {
    return 'EmailAuthRequest(name: $name, lastName: $lastName, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailAuthRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, lastName, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailAuthRequestImplCopyWith<_$EmailAuthRequestImpl> get copyWith =>
      __$$EmailAuthRequestImplCopyWithImpl<_$EmailAuthRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmailAuthRequestImplToJson(
      this,
    );
  }
}

abstract class _EmailAuthRequest implements EmailAuthRequest {
  const factory _EmailAuthRequest(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'last_name') final String? lastName,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'password') final String? password}) =
      _$EmailAuthRequestImpl;

  factory _EmailAuthRequest.fromJson(Map<String, dynamic> json) =
      _$EmailAuthRequestImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$EmailAuthRequestImplCopyWith<_$EmailAuthRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

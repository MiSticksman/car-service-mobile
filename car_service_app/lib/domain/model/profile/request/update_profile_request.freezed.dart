// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateProfileRequest _$UpdateProfileRequestFromJson(Map<String, dynamic> json) {
  return _UpdateProfileRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateProfileRequest {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'second_name')
  String? get secondName => throw _privateConstructorUsedError;
  @JsonKey(name: 'birthday')
  String? get birthdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'sex')
  int? get sex => throw _privateConstructorUsedError;
  @JsonKey(name: 'age')
  int? get age => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  String? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_sms_send')
  int? get isSmsSend => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_email_send')
  int? get isEmailSend => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateProfileRequestCopyWith<UpdateProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileRequestCopyWith<$Res> {
  factory $UpdateProfileRequestCopyWith(UpdateProfileRequest value,
          $Res Function(UpdateProfileRequest) then) =
      _$UpdateProfileRequestCopyWithImpl<$Res, UpdateProfileRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'second_name') String? secondName,
      @JsonKey(name: 'birthday') String? birthdate,
      @JsonKey(name: 'sex') int? sex,
      @JsonKey(name: 'age') int? age,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'avatar') String? avatar,
      @JsonKey(name: 'is_sms_send') int? isSmsSend,
      @JsonKey(name: 'is_email_send') int? isEmailSend});
}

/// @nodoc
class _$UpdateProfileRequestCopyWithImpl<$Res,
        $Val extends UpdateProfileRequest>
    implements $UpdateProfileRequestCopyWith<$Res> {
  _$UpdateProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? lastName = freezed,
    Object? secondName = freezed,
    Object? birthdate = freezed,
    Object? sex = freezed,
    Object? age = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? isSmsSend = freezed,
    Object? isEmailSend = freezed,
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
      secondName: freezed == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      isSmsSend: freezed == isSmsSend
          ? _value.isSmsSend
          : isSmsSend // ignore: cast_nullable_to_non_nullable
              as int?,
      isEmailSend: freezed == isEmailSend
          ? _value.isEmailSend
          : isEmailSend // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateProfileRequestImplCopyWith<$Res>
    implements $UpdateProfileRequestCopyWith<$Res> {
  factory _$$UpdateProfileRequestImplCopyWith(_$UpdateProfileRequestImpl value,
          $Res Function(_$UpdateProfileRequestImpl) then) =
      __$$UpdateProfileRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'second_name') String? secondName,
      @JsonKey(name: 'birthday') String? birthdate,
      @JsonKey(name: 'sex') int? sex,
      @JsonKey(name: 'age') int? age,
      @JsonKey(name: 'phone') String? phone,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'avatar') String? avatar,
      @JsonKey(name: 'is_sms_send') int? isSmsSend,
      @JsonKey(name: 'is_email_send') int? isEmailSend});
}

/// @nodoc
class __$$UpdateProfileRequestImplCopyWithImpl<$Res>
    extends _$UpdateProfileRequestCopyWithImpl<$Res, _$UpdateProfileRequestImpl>
    implements _$$UpdateProfileRequestImplCopyWith<$Res> {
  __$$UpdateProfileRequestImplCopyWithImpl(_$UpdateProfileRequestImpl _value,
      $Res Function(_$UpdateProfileRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? lastName = freezed,
    Object? secondName = freezed,
    Object? birthdate = freezed,
    Object? sex = freezed,
    Object? age = freezed,
    Object? phone = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? isSmsSend = freezed,
    Object? isEmailSend = freezed,
  }) {
    return _then(_$UpdateProfileRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      secondName: freezed == secondName
          ? _value.secondName
          : secondName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      isSmsSend: freezed == isSmsSend
          ? _value.isSmsSend
          : isSmsSend // ignore: cast_nullable_to_non_nullable
              as int?,
      isEmailSend: freezed == isEmailSend
          ? _value.isEmailSend
          : isEmailSend // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$UpdateProfileRequestImpl implements _UpdateProfileRequest {
  const _$UpdateProfileRequestImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'second_name') this.secondName,
      @JsonKey(name: 'birthday') this.birthdate,
      @JsonKey(name: 'sex') this.sex,
      @JsonKey(name: 'age') this.age,
      @JsonKey(name: 'phone') this.phone,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'avatar') this.avatar,
      @JsonKey(name: 'is_sms_send') this.isSmsSend,
      @JsonKey(name: 'is_email_send') this.isEmailSend});

  factory _$UpdateProfileRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateProfileRequestImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'second_name')
  final String? secondName;
  @override
  @JsonKey(name: 'birthday')
  final String? birthdate;
  @override
  @JsonKey(name: 'sex')
  final int? sex;
  @override
  @JsonKey(name: 'age')
  final int? age;
  @override
  @JsonKey(name: 'phone')
  final String? phone;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'avatar')
  final String? avatar;
  @override
  @JsonKey(name: 'is_sms_send')
  final int? isSmsSend;
  @override
  @JsonKey(name: 'is_email_send')
  final int? isEmailSend;

  @override
  String toString() {
    return 'UpdateProfileRequest(name: $name, lastName: $lastName, secondName: $secondName, birthdate: $birthdate, sex: $sex, age: $age, phone: $phone, email: $email, avatar: $avatar, isSmsSend: $isSmsSend, isEmailSend: $isEmailSend)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.secondName, secondName) ||
                other.secondName == secondName) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.sex, sex) || other.sex == sex) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.isSmsSend, isSmsSend) ||
                other.isSmsSend == isSmsSend) &&
            (identical(other.isEmailSend, isEmailSend) ||
                other.isEmailSend == isEmailSend));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, lastName, secondName,
      birthdate, sex, age, phone, email, avatar, isSmsSend, isEmailSend);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileRequestImplCopyWith<_$UpdateProfileRequestImpl>
      get copyWith =>
          __$$UpdateProfileRequestImplCopyWithImpl<_$UpdateProfileRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateProfileRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateProfileRequest implements UpdateProfileRequest {
  const factory _UpdateProfileRequest(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'last_name') final String? lastName,
          @JsonKey(name: 'second_name') final String? secondName,
          @JsonKey(name: 'birthday') final String? birthdate,
          @JsonKey(name: 'sex') final int? sex,
          @JsonKey(name: 'age') final int? age,
          @JsonKey(name: 'phone') final String? phone,
          @JsonKey(name: 'email') final String? email,
          @JsonKey(name: 'avatar') final String? avatar,
          @JsonKey(name: 'is_sms_send') final int? isSmsSend,
          @JsonKey(name: 'is_email_send') final int? isEmailSend}) =
      _$UpdateProfileRequestImpl;

  factory _UpdateProfileRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateProfileRequestImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'second_name')
  String? get secondName;
  @override
  @JsonKey(name: 'birthday')
  String? get birthdate;
  @override
  @JsonKey(name: 'sex')
  int? get sex;
  @override
  @JsonKey(name: 'age')
  int? get age;
  @override
  @JsonKey(name: 'phone')
  String? get phone;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'avatar')
  String? get avatar;
  @override
  @JsonKey(name: 'is_sms_send')
  int? get isSmsSend;
  @override
  @JsonKey(name: 'is_email_send')
  int? get isEmailSend;
  @override
  @JsonKey(ignore: true)
  _$$UpdateProfileRequestImplCopyWith<_$UpdateProfileRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

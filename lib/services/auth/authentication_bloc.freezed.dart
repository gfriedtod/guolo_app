// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) startedLogin,
    required TResult Function(User user) startedLogout,
    required TResult Function(User user) startedRegister,
    required TResult Function(EmailVerified emailVerified) startedVerified,
    required TResult Function(String email) sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? startedLogin,
    TResult? Function(User user)? startedLogout,
    TResult? Function(User user)? startedRegister,
    TResult? Function(EmailVerified emailVerified)? startedVerified,
    TResult? Function(String email)? sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? startedLogin,
    TResult Function(User user)? startedLogout,
    TResult Function(User user)? startedRegister,
    TResult Function(EmailVerified emailVerified)? startedVerified,
    TResult Function(String email)? sendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) startedLogin,
    required TResult Function(_StartedLogout value) startedLogout,
    required TResult Function(_StartedRegister value) startedRegister,
    required TResult Function(_StartedVerified value) startedVerified,
    required TResult Function(_SendOtp value) sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? startedLogin,
    TResult? Function(_StartedLogout value)? startedLogout,
    TResult? Function(_StartedRegister value)? startedRegister,
    TResult? Function(_StartedVerified value)? startedVerified,
    TResult? Function(_SendOtp value)? sendOtp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? startedLogin,
    TResult Function(_StartedLogout value)? startedLogout,
    TResult Function(_StartedRegister value)? startedRegister,
    TResult Function(_StartedVerified value)? startedVerified,
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$StartedImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationEvent.startedLogin(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) startedLogin,
    required TResult Function(User user) startedLogout,
    required TResult Function(User user) startedRegister,
    required TResult Function(EmailVerified emailVerified) startedVerified,
    required TResult Function(String email) sendOtp,
  }) {
    return startedLogin(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? startedLogin,
    TResult? Function(User user)? startedLogout,
    TResult? Function(User user)? startedRegister,
    TResult? Function(EmailVerified emailVerified)? startedVerified,
    TResult? Function(String email)? sendOtp,
  }) {
    return startedLogin?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? startedLogin,
    TResult Function(User user)? startedLogout,
    TResult Function(User user)? startedRegister,
    TResult Function(EmailVerified emailVerified)? startedVerified,
    TResult Function(String email)? sendOtp,
    required TResult orElse(),
  }) {
    if (startedLogin != null) {
      return startedLogin(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) startedLogin,
    required TResult Function(_StartedLogout value) startedLogout,
    required TResult Function(_StartedRegister value) startedRegister,
    required TResult Function(_StartedVerified value) startedVerified,
    required TResult Function(_SendOtp value) sendOtp,
  }) {
    return startedLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? startedLogin,
    TResult? Function(_StartedLogout value)? startedLogout,
    TResult? Function(_StartedRegister value)? startedRegister,
    TResult? Function(_StartedVerified value)? startedVerified,
    TResult? Function(_SendOtp value)? sendOtp,
  }) {
    return startedLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? startedLogin,
    TResult Function(_StartedLogout value)? startedLogout,
    TResult Function(_StartedRegister value)? startedRegister,
    TResult Function(_StartedVerified value)? startedVerified,
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (startedLogin != null) {
      return startedLogin(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthenticationEvent {
  const factory _Started(final User user) = _$StartedImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartedLogoutImplCopyWith<$Res> {
  factory _$$StartedLogoutImplCopyWith(
          _$StartedLogoutImpl value, $Res Function(_$StartedLogoutImpl) then) =
      __$$StartedLogoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$StartedLogoutImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$StartedLogoutImpl>
    implements _$$StartedLogoutImplCopyWith<$Res> {
  __$$StartedLogoutImplCopyWithImpl(
      _$StartedLogoutImpl _value, $Res Function(_$StartedLogoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$StartedLogoutImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$StartedLogoutImpl implements _StartedLogout {
  const _$StartedLogoutImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationEvent.startedLogout(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedLogoutImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedLogoutImplCopyWith<_$StartedLogoutImpl> get copyWith =>
      __$$StartedLogoutImplCopyWithImpl<_$StartedLogoutImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) startedLogin,
    required TResult Function(User user) startedLogout,
    required TResult Function(User user) startedRegister,
    required TResult Function(EmailVerified emailVerified) startedVerified,
    required TResult Function(String email) sendOtp,
  }) {
    return startedLogout(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? startedLogin,
    TResult? Function(User user)? startedLogout,
    TResult? Function(User user)? startedRegister,
    TResult? Function(EmailVerified emailVerified)? startedVerified,
    TResult? Function(String email)? sendOtp,
  }) {
    return startedLogout?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? startedLogin,
    TResult Function(User user)? startedLogout,
    TResult Function(User user)? startedRegister,
    TResult Function(EmailVerified emailVerified)? startedVerified,
    TResult Function(String email)? sendOtp,
    required TResult orElse(),
  }) {
    if (startedLogout != null) {
      return startedLogout(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) startedLogin,
    required TResult Function(_StartedLogout value) startedLogout,
    required TResult Function(_StartedRegister value) startedRegister,
    required TResult Function(_StartedVerified value) startedVerified,
    required TResult Function(_SendOtp value) sendOtp,
  }) {
    return startedLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? startedLogin,
    TResult? Function(_StartedLogout value)? startedLogout,
    TResult? Function(_StartedRegister value)? startedRegister,
    TResult? Function(_StartedVerified value)? startedVerified,
    TResult? Function(_SendOtp value)? sendOtp,
  }) {
    return startedLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? startedLogin,
    TResult Function(_StartedLogout value)? startedLogout,
    TResult Function(_StartedRegister value)? startedRegister,
    TResult Function(_StartedVerified value)? startedVerified,
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (startedLogout != null) {
      return startedLogout(this);
    }
    return orElse();
  }
}

abstract class _StartedLogout implements AuthenticationEvent {
  const factory _StartedLogout(final User user) = _$StartedLogoutImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$StartedLogoutImplCopyWith<_$StartedLogoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartedRegisterImplCopyWith<$Res> {
  factory _$$StartedRegisterImplCopyWith(_$StartedRegisterImpl value,
          $Res Function(_$StartedRegisterImpl) then) =
      __$$StartedRegisterImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$StartedRegisterImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$StartedRegisterImpl>
    implements _$$StartedRegisterImplCopyWith<$Res> {
  __$$StartedRegisterImplCopyWithImpl(
      _$StartedRegisterImpl _value, $Res Function(_$StartedRegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$StartedRegisterImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$StartedRegisterImpl implements _StartedRegister {
  const _$StartedRegisterImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationEvent.startedRegister(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedRegisterImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedRegisterImplCopyWith<_$StartedRegisterImpl> get copyWith =>
      __$$StartedRegisterImplCopyWithImpl<_$StartedRegisterImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) startedLogin,
    required TResult Function(User user) startedLogout,
    required TResult Function(User user) startedRegister,
    required TResult Function(EmailVerified emailVerified) startedVerified,
    required TResult Function(String email) sendOtp,
  }) {
    return startedRegister(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? startedLogin,
    TResult? Function(User user)? startedLogout,
    TResult? Function(User user)? startedRegister,
    TResult? Function(EmailVerified emailVerified)? startedVerified,
    TResult? Function(String email)? sendOtp,
  }) {
    return startedRegister?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? startedLogin,
    TResult Function(User user)? startedLogout,
    TResult Function(User user)? startedRegister,
    TResult Function(EmailVerified emailVerified)? startedVerified,
    TResult Function(String email)? sendOtp,
    required TResult orElse(),
  }) {
    if (startedRegister != null) {
      return startedRegister(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) startedLogin,
    required TResult Function(_StartedLogout value) startedLogout,
    required TResult Function(_StartedRegister value) startedRegister,
    required TResult Function(_StartedVerified value) startedVerified,
    required TResult Function(_SendOtp value) sendOtp,
  }) {
    return startedRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? startedLogin,
    TResult? Function(_StartedLogout value)? startedLogout,
    TResult? Function(_StartedRegister value)? startedRegister,
    TResult? Function(_StartedVerified value)? startedVerified,
    TResult? Function(_SendOtp value)? sendOtp,
  }) {
    return startedRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? startedLogin,
    TResult Function(_StartedLogout value)? startedLogout,
    TResult Function(_StartedRegister value)? startedRegister,
    TResult Function(_StartedVerified value)? startedVerified,
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (startedRegister != null) {
      return startedRegister(this);
    }
    return orElse();
  }
}

abstract class _StartedRegister implements AuthenticationEvent {
  const factory _StartedRegister(final User user) = _$StartedRegisterImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$StartedRegisterImplCopyWith<_$StartedRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartedVerifiedImplCopyWith<$Res> {
  factory _$$StartedVerifiedImplCopyWith(_$StartedVerifiedImpl value,
          $Res Function(_$StartedVerifiedImpl) then) =
      __$$StartedVerifiedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmailVerified emailVerified});
}

/// @nodoc
class __$$StartedVerifiedImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$StartedVerifiedImpl>
    implements _$$StartedVerifiedImplCopyWith<$Res> {
  __$$StartedVerifiedImplCopyWithImpl(
      _$StartedVerifiedImpl _value, $Res Function(_$StartedVerifiedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailVerified = null,
  }) {
    return _then(_$StartedVerifiedImpl(
      null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as EmailVerified,
    ));
  }
}

/// @nodoc

class _$StartedVerifiedImpl implements _StartedVerified {
  const _$StartedVerifiedImpl(this.emailVerified);

  @override
  final EmailVerified emailVerified;

  @override
  String toString() {
    return 'AuthenticationEvent.startedVerified(emailVerified: $emailVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedVerifiedImpl &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailVerified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedVerifiedImplCopyWith<_$StartedVerifiedImpl> get copyWith =>
      __$$StartedVerifiedImplCopyWithImpl<_$StartedVerifiedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) startedLogin,
    required TResult Function(User user) startedLogout,
    required TResult Function(User user) startedRegister,
    required TResult Function(EmailVerified emailVerified) startedVerified,
    required TResult Function(String email) sendOtp,
  }) {
    return startedVerified(emailVerified);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? startedLogin,
    TResult? Function(User user)? startedLogout,
    TResult? Function(User user)? startedRegister,
    TResult? Function(EmailVerified emailVerified)? startedVerified,
    TResult? Function(String email)? sendOtp,
  }) {
    return startedVerified?.call(emailVerified);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? startedLogin,
    TResult Function(User user)? startedLogout,
    TResult Function(User user)? startedRegister,
    TResult Function(EmailVerified emailVerified)? startedVerified,
    TResult Function(String email)? sendOtp,
    required TResult orElse(),
  }) {
    if (startedVerified != null) {
      return startedVerified(emailVerified);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) startedLogin,
    required TResult Function(_StartedLogout value) startedLogout,
    required TResult Function(_StartedRegister value) startedRegister,
    required TResult Function(_StartedVerified value) startedVerified,
    required TResult Function(_SendOtp value) sendOtp,
  }) {
    return startedVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? startedLogin,
    TResult? Function(_StartedLogout value)? startedLogout,
    TResult? Function(_StartedRegister value)? startedRegister,
    TResult? Function(_StartedVerified value)? startedVerified,
    TResult? Function(_SendOtp value)? sendOtp,
  }) {
    return startedVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? startedLogin,
    TResult Function(_StartedLogout value)? startedLogout,
    TResult Function(_StartedRegister value)? startedRegister,
    TResult Function(_StartedVerified value)? startedVerified,
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (startedVerified != null) {
      return startedVerified(this);
    }
    return orElse();
  }
}

abstract class _StartedVerified implements AuthenticationEvent {
  const factory _StartedVerified(final EmailVerified emailVerified) =
      _$StartedVerifiedImpl;

  EmailVerified get emailVerified;
  @JsonKey(ignore: true)
  _$$StartedVerifiedImplCopyWith<_$StartedVerifiedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendOtpImplCopyWith<$Res> {
  factory _$$SendOtpImplCopyWith(
          _$SendOtpImpl value, $Res Function(_$SendOtpImpl) then) =
      __$$SendOtpImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendOtpImplCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$SendOtpImpl>
    implements _$$SendOtpImplCopyWith<$Res> {
  __$$SendOtpImplCopyWithImpl(
      _$SendOtpImpl _value, $Res Function(_$SendOtpImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendOtpImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendOtpImpl implements _SendOtp {
  const _$SendOtpImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthenticationEvent.sendOtp(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpImplCopyWith<_$SendOtpImpl> get copyWith =>
      __$$SendOtpImplCopyWithImpl<_$SendOtpImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) startedLogin,
    required TResult Function(User user) startedLogout,
    required TResult Function(User user) startedRegister,
    required TResult Function(EmailVerified emailVerified) startedVerified,
    required TResult Function(String email) sendOtp,
  }) {
    return sendOtp(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? startedLogin,
    TResult? Function(User user)? startedLogout,
    TResult? Function(User user)? startedRegister,
    TResult? Function(EmailVerified emailVerified)? startedVerified,
    TResult? Function(String email)? sendOtp,
  }) {
    return sendOtp?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? startedLogin,
    TResult Function(User user)? startedLogout,
    TResult Function(User user)? startedRegister,
    TResult Function(EmailVerified emailVerified)? startedVerified,
    TResult Function(String email)? sendOtp,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) startedLogin,
    required TResult Function(_StartedLogout value) startedLogout,
    required TResult Function(_StartedRegister value) startedRegister,
    required TResult Function(_StartedVerified value) startedVerified,
    required TResult Function(_SendOtp value) sendOtp,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? startedLogin,
    TResult? Function(_StartedLogout value)? startedLogout,
    TResult? Function(_StartedRegister value)? startedRegister,
    TResult? Function(_StartedVerified value)? startedVerified,
    TResult? Function(_SendOtp value)? sendOtp,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? startedLogin,
    TResult Function(_StartedLogout value)? startedLogout,
    TResult Function(_StartedRegister value)? startedRegister,
    TResult Function(_StartedVerified value)? startedVerified,
    TResult Function(_SendOtp value)? sendOtp,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class _SendOtp implements AuthenticationEvent {
  const factory _SendOtp(final String email) = _$SendOtpImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$SendOtpImplCopyWith<_$SendOtpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() register,
    required TResult Function() verified,
    required TResult Function() unknown,
    required TResult Function() loading,
    required TResult Function() existedEmail,
    required TResult Function(String message) error,
    required TResult Function() otpSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? register,
    TResult? Function()? verified,
    TResult? Function()? unknown,
    TResult? Function()? loading,
    TResult? Function()? existedEmail,
    TResult? Function(String message)? error,
    TResult? Function()? otpSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? register,
    TResult Function()? verified,
    TResult Function()? unknown,
    TResult Function()? loading,
    TResult Function()? existedEmail,
    TResult Function(String message)? error,
    TResult Function()? otpSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Register value) register,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ExistedEmail value) existedEmail,
    required TResult Function(_Error value) error,
    required TResult Function(_OtpSend value) otpSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Register value)? register,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ExistedEmail value)? existedEmail,
    TResult? Function(_Error value)? error,
    TResult? Function(_OtpSend value)? otpSend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Register value)? register,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Loading value)? loading,
    TResult Function(_ExistedEmail value)? existedEmail,
    TResult Function(_Error value)? error,
    TResult Function(_OtpSend value)? otpSend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthenticationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() register,
    required TResult Function() verified,
    required TResult Function() unknown,
    required TResult Function() loading,
    required TResult Function() existedEmail,
    required TResult Function(String message) error,
    required TResult Function() otpSend,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? register,
    TResult? Function()? verified,
    TResult? Function()? unknown,
    TResult? Function()? loading,
    TResult? Function()? existedEmail,
    TResult? Function(String message)? error,
    TResult? Function()? otpSend,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? register,
    TResult Function()? verified,
    TResult Function()? unknown,
    TResult Function()? loading,
    TResult Function()? existedEmail,
    TResult Function(String message)? error,
    TResult Function()? otpSend,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Register value) register,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ExistedEmail value) existedEmail,
    required TResult Function(_Error value) error,
    required TResult Function(_OtpSend value) otpSend,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Register value)? register,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ExistedEmail value)? existedEmail,
    TResult? Function(_Error value)? error,
    TResult? Function(_OtpSend value)? otpSend,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Register value)? register,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Loading value)? loading,
    TResult Function(_ExistedEmail value)? existedEmail,
    TResult Function(_Error value)? error,
    TResult Function(_OtpSend value)? otpSend,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthenticationState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
          _$AuthenticatedImpl value, $Res Function(_$AuthenticatedImpl) then) =
      __$$AuthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
      _$AuthenticatedImpl _value, $Res Function(_$AuthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthenticatedImpl implements _Authenticated {
  const _$AuthenticatedImpl();

  @override
  String toString() {
    return 'AuthenticationState.authenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() register,
    required TResult Function() verified,
    required TResult Function() unknown,
    required TResult Function() loading,
    required TResult Function() existedEmail,
    required TResult Function(String message) error,
    required TResult Function() otpSend,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? register,
    TResult? Function()? verified,
    TResult? Function()? unknown,
    TResult? Function()? loading,
    TResult? Function()? existedEmail,
    TResult? Function(String message)? error,
    TResult? Function()? otpSend,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? register,
    TResult Function()? verified,
    TResult Function()? unknown,
    TResult Function()? loading,
    TResult Function()? existedEmail,
    TResult Function(String message)? error,
    TResult Function()? otpSend,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Register value) register,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ExistedEmail value) existedEmail,
    required TResult Function(_Error value) error,
    required TResult Function(_OtpSend value) otpSend,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Register value)? register,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ExistedEmail value)? existedEmail,
    TResult? Function(_Error value)? error,
    TResult? Function(_OtpSend value)? otpSend,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Register value)? register,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Loading value)? loading,
    TResult Function(_ExistedEmail value)? existedEmail,
    TResult Function(_Error value)? error,
    TResult Function(_OtpSend value)? otpSend,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthenticationState {
  const factory _Authenticated() = _$AuthenticatedImpl;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthenticatedImpl implements _Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'AuthenticationState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() register,
    required TResult Function() verified,
    required TResult Function() unknown,
    required TResult Function() loading,
    required TResult Function() existedEmail,
    required TResult Function(String message) error,
    required TResult Function() otpSend,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? register,
    TResult? Function()? verified,
    TResult? Function()? unknown,
    TResult? Function()? loading,
    TResult? Function()? existedEmail,
    TResult? Function(String message)? error,
    TResult? Function()? otpSend,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? register,
    TResult Function()? verified,
    TResult Function()? unknown,
    TResult Function()? loading,
    TResult Function()? existedEmail,
    TResult Function(String message)? error,
    TResult Function()? otpSend,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Register value) register,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ExistedEmail value) existedEmail,
    required TResult Function(_Error value) error,
    required TResult Function(_OtpSend value) otpSend,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Register value)? register,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ExistedEmail value)? existedEmail,
    TResult? Function(_Error value)? error,
    TResult? Function(_OtpSend value)? otpSend,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Register value)? register,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Loading value)? loading,
    TResult Function(_ExistedEmail value)? existedEmail,
    TResult Function(_Error value)? error,
    TResult Function(_OtpSend value)? otpSend,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthenticationState {
  const factory _Unauthenticated() = _$UnauthenticatedImpl;
}

/// @nodoc
abstract class _$$RegisterImplCopyWith<$Res> {
  factory _$$RegisterImplCopyWith(
          _$RegisterImpl value, $Res Function(_$RegisterImpl) then) =
      __$$RegisterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$RegisterImpl>
    implements _$$RegisterImplCopyWith<$Res> {
  __$$RegisterImplCopyWithImpl(
      _$RegisterImpl _value, $Res Function(_$RegisterImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterImpl implements _Register {
  const _$RegisterImpl();

  @override
  String toString() {
    return 'AuthenticationState.register()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() register,
    required TResult Function() verified,
    required TResult Function() unknown,
    required TResult Function() loading,
    required TResult Function() existedEmail,
    required TResult Function(String message) error,
    required TResult Function() otpSend,
  }) {
    return register();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? register,
    TResult? Function()? verified,
    TResult? Function()? unknown,
    TResult? Function()? loading,
    TResult? Function()? existedEmail,
    TResult? Function(String message)? error,
    TResult? Function()? otpSend,
  }) {
    return register?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? register,
    TResult Function()? verified,
    TResult Function()? unknown,
    TResult Function()? loading,
    TResult Function()? existedEmail,
    TResult Function(String message)? error,
    TResult Function()? otpSend,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Register value) register,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ExistedEmail value) existedEmail,
    required TResult Function(_Error value) error,
    required TResult Function(_OtpSend value) otpSend,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Register value)? register,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ExistedEmail value)? existedEmail,
    TResult? Function(_Error value)? error,
    TResult? Function(_OtpSend value)? otpSend,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Register value)? register,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Loading value)? loading,
    TResult Function(_ExistedEmail value)? existedEmail,
    TResult Function(_Error value)? error,
    TResult Function(_OtpSend value)? otpSend,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthenticationState {
  const factory _Register() = _$RegisterImpl;
}

/// @nodoc
abstract class _$$VerifiedImplCopyWith<$Res> {
  factory _$$VerifiedImplCopyWith(
          _$VerifiedImpl value, $Res Function(_$VerifiedImpl) then) =
      __$$VerifiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifiedImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$VerifiedImpl>
    implements _$$VerifiedImplCopyWith<$Res> {
  __$$VerifiedImplCopyWithImpl(
      _$VerifiedImpl _value, $Res Function(_$VerifiedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifiedImpl implements _Verified {
  const _$VerifiedImpl();

  @override
  String toString() {
    return 'AuthenticationState.verified()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifiedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() register,
    required TResult Function() verified,
    required TResult Function() unknown,
    required TResult Function() loading,
    required TResult Function() existedEmail,
    required TResult Function(String message) error,
    required TResult Function() otpSend,
  }) {
    return verified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? register,
    TResult? Function()? verified,
    TResult? Function()? unknown,
    TResult? Function()? loading,
    TResult? Function()? existedEmail,
    TResult? Function(String message)? error,
    TResult? Function()? otpSend,
  }) {
    return verified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? register,
    TResult Function()? verified,
    TResult Function()? unknown,
    TResult Function()? loading,
    TResult Function()? existedEmail,
    TResult Function(String message)? error,
    TResult Function()? otpSend,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Register value) register,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ExistedEmail value) existedEmail,
    required TResult Function(_Error value) error,
    required TResult Function(_OtpSend value) otpSend,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Register value)? register,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ExistedEmail value)? existedEmail,
    TResult? Function(_Error value)? error,
    TResult? Function(_OtpSend value)? otpSend,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Register value)? register,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Loading value)? loading,
    TResult Function(_ExistedEmail value)? existedEmail,
    TResult Function(_Error value)? error,
    TResult Function(_OtpSend value)? otpSend,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class _Verified implements AuthenticationState {
  const factory _Verified() = _$VerifiedImpl;
}

/// @nodoc
abstract class _$$UnknownImplCopyWith<$Res> {
  factory _$$UnknownImplCopyWith(
          _$UnknownImpl value, $Res Function(_$UnknownImpl) then) =
      __$$UnknownImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$UnknownImpl>
    implements _$$UnknownImplCopyWith<$Res> {
  __$$UnknownImplCopyWithImpl(
      _$UnknownImpl _value, $Res Function(_$UnknownImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownImpl implements _Unknown {
  const _$UnknownImpl();

  @override
  String toString() {
    return 'AuthenticationState.unknown()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() register,
    required TResult Function() verified,
    required TResult Function() unknown,
    required TResult Function() loading,
    required TResult Function() existedEmail,
    required TResult Function(String message) error,
    required TResult Function() otpSend,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? register,
    TResult? Function()? verified,
    TResult? Function()? unknown,
    TResult? Function()? loading,
    TResult? Function()? existedEmail,
    TResult? Function(String message)? error,
    TResult? Function()? otpSend,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? register,
    TResult Function()? verified,
    TResult Function()? unknown,
    TResult Function()? loading,
    TResult Function()? existedEmail,
    TResult Function(String message)? error,
    TResult Function()? otpSend,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Register value) register,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ExistedEmail value) existedEmail,
    required TResult Function(_Error value) error,
    required TResult Function(_OtpSend value) otpSend,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Register value)? register,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ExistedEmail value)? existedEmail,
    TResult? Function(_Error value)? error,
    TResult? Function(_OtpSend value)? otpSend,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Register value)? register,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Loading value)? loading,
    TResult Function(_ExistedEmail value)? existedEmail,
    TResult Function(_Error value)? error,
    TResult Function(_OtpSend value)? otpSend,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements AuthenticationState {
  const factory _Unknown() = _$UnknownImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthenticationState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() register,
    required TResult Function() verified,
    required TResult Function() unknown,
    required TResult Function() loading,
    required TResult Function() existedEmail,
    required TResult Function(String message) error,
    required TResult Function() otpSend,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? register,
    TResult? Function()? verified,
    TResult? Function()? unknown,
    TResult? Function()? loading,
    TResult? Function()? existedEmail,
    TResult? Function(String message)? error,
    TResult? Function()? otpSend,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? register,
    TResult Function()? verified,
    TResult Function()? unknown,
    TResult Function()? loading,
    TResult Function()? existedEmail,
    TResult Function(String message)? error,
    TResult Function()? otpSend,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Register value) register,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ExistedEmail value) existedEmail,
    required TResult Function(_Error value) error,
    required TResult Function(_OtpSend value) otpSend,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Register value)? register,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ExistedEmail value)? existedEmail,
    TResult? Function(_Error value)? error,
    TResult? Function(_OtpSend value)? otpSend,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Register value)? register,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Loading value)? loading,
    TResult Function(_ExistedEmail value)? existedEmail,
    TResult Function(_Error value)? error,
    TResult Function(_OtpSend value)? otpSend,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthenticationState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ExistedEmailImplCopyWith<$Res> {
  factory _$$ExistedEmailImplCopyWith(
          _$ExistedEmailImpl value, $Res Function(_$ExistedEmailImpl) then) =
      __$$ExistedEmailImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExistedEmailImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$ExistedEmailImpl>
    implements _$$ExistedEmailImplCopyWith<$Res> {
  __$$ExistedEmailImplCopyWithImpl(
      _$ExistedEmailImpl _value, $Res Function(_$ExistedEmailImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExistedEmailImpl implements _ExistedEmail {
  const _$ExistedEmailImpl();

  @override
  String toString() {
    return 'AuthenticationState.existedEmail()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExistedEmailImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() register,
    required TResult Function() verified,
    required TResult Function() unknown,
    required TResult Function() loading,
    required TResult Function() existedEmail,
    required TResult Function(String message) error,
    required TResult Function() otpSend,
  }) {
    return existedEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? register,
    TResult? Function()? verified,
    TResult? Function()? unknown,
    TResult? Function()? loading,
    TResult? Function()? existedEmail,
    TResult? Function(String message)? error,
    TResult? Function()? otpSend,
  }) {
    return existedEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? register,
    TResult Function()? verified,
    TResult Function()? unknown,
    TResult Function()? loading,
    TResult Function()? existedEmail,
    TResult Function(String message)? error,
    TResult Function()? otpSend,
    required TResult orElse(),
  }) {
    if (existedEmail != null) {
      return existedEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Register value) register,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ExistedEmail value) existedEmail,
    required TResult Function(_Error value) error,
    required TResult Function(_OtpSend value) otpSend,
  }) {
    return existedEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Register value)? register,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ExistedEmail value)? existedEmail,
    TResult? Function(_Error value)? error,
    TResult? Function(_OtpSend value)? otpSend,
  }) {
    return existedEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Register value)? register,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Loading value)? loading,
    TResult Function(_ExistedEmail value)? existedEmail,
    TResult Function(_Error value)? error,
    TResult Function(_OtpSend value)? otpSend,
    required TResult orElse(),
  }) {
    if (existedEmail != null) {
      return existedEmail(this);
    }
    return orElse();
  }
}

abstract class _ExistedEmail implements AuthenticationState {
  const factory _ExistedEmail() = _$ExistedEmailImpl;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthenticationState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() register,
    required TResult Function() verified,
    required TResult Function() unknown,
    required TResult Function() loading,
    required TResult Function() existedEmail,
    required TResult Function(String message) error,
    required TResult Function() otpSend,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? register,
    TResult? Function()? verified,
    TResult? Function()? unknown,
    TResult? Function()? loading,
    TResult? Function()? existedEmail,
    TResult? Function(String message)? error,
    TResult? Function()? otpSend,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? register,
    TResult Function()? verified,
    TResult Function()? unknown,
    TResult Function()? loading,
    TResult Function()? existedEmail,
    TResult Function(String message)? error,
    TResult Function()? otpSend,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Register value) register,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ExistedEmail value) existedEmail,
    required TResult Function(_Error value) error,
    required TResult Function(_OtpSend value) otpSend,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Register value)? register,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ExistedEmail value)? existedEmail,
    TResult? Function(_Error value)? error,
    TResult? Function(_OtpSend value)? otpSend,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Register value)? register,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Loading value)? loading,
    TResult Function(_ExistedEmail value)? existedEmail,
    TResult Function(_Error value)? error,
    TResult Function(_OtpSend value)? otpSend,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthenticationState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpSendImplCopyWith<$Res> {
  factory _$$OtpSendImplCopyWith(
          _$OtpSendImpl value, $Res Function(_$OtpSendImpl) then) =
      __$$OtpSendImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpSendImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$OtpSendImpl>
    implements _$$OtpSendImplCopyWith<$Res> {
  __$$OtpSendImplCopyWithImpl(
      _$OtpSendImpl _value, $Res Function(_$OtpSendImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtpSendImpl implements _OtpSend {
  const _$OtpSendImpl();

  @override
  String toString() {
    return 'AuthenticationState.otpSend()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpSendImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() register,
    required TResult Function() verified,
    required TResult Function() unknown,
    required TResult Function() loading,
    required TResult Function() existedEmail,
    required TResult Function(String message) error,
    required TResult Function() otpSend,
  }) {
    return otpSend();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? register,
    TResult? Function()? verified,
    TResult? Function()? unknown,
    TResult? Function()? loading,
    TResult? Function()? existedEmail,
    TResult? Function(String message)? error,
    TResult? Function()? otpSend,
  }) {
    return otpSend?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? register,
    TResult Function()? verified,
    TResult Function()? unknown,
    TResult Function()? loading,
    TResult Function()? existedEmail,
    TResult Function(String message)? error,
    TResult Function()? otpSend,
    required TResult orElse(),
  }) {
    if (otpSend != null) {
      return otpSend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Register value) register,
    required TResult Function(_Verified value) verified,
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Loading value) loading,
    required TResult Function(_ExistedEmail value) existedEmail,
    required TResult Function(_Error value) error,
    required TResult Function(_OtpSend value) otpSend,
  }) {
    return otpSend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Register value)? register,
    TResult? Function(_Verified value)? verified,
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_ExistedEmail value)? existedEmail,
    TResult? Function(_Error value)? error,
    TResult? Function(_OtpSend value)? otpSend,
  }) {
    return otpSend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Register value)? register,
    TResult Function(_Verified value)? verified,
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Loading value)? loading,
    TResult Function(_ExistedEmail value)? existedEmail,
    TResult Function(_Error value)? error,
    TResult Function(_OtpSend value)? otpSend,
    required TResult orElse(),
  }) {
    if (otpSend != null) {
      return otpSend(this);
    }
    return orElse();
  }
}

abstract class _OtpSend implements AuthenticationState {
  const factory _OtpSend() = _$OtpSendImpl;
}

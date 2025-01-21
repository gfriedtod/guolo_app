part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;

  const factory AuthenticationState.authenticated() = _Authenticated;
  const factory AuthenticationState.unauthenticated() = _Unauthenticated;
  const factory AuthenticationState.register() = _Register;
  const factory AuthenticationState.verified() = _Verified;

  const factory AuthenticationState.unknown() = _Unknown;

  const factory AuthenticationState.loading() = _Loading;

  const factory AuthenticationState.existedEmail() = _ExistedEmail;

  const factory AuthenticationState.error(String message) = _Error;
  const factory AuthenticationState.otpSend() = _OtpSend;
}

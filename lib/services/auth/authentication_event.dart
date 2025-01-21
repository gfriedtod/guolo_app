part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.startedLogin(User user) = _Started;
  const factory AuthenticationEvent.startedLogout(User user) = _StartedLogout;
  const factory AuthenticationEvent.startedRegister(User user) =
      _StartedRegister;
  const factory AuthenticationEvent.startedVerified(EmailVerified emailVerified) = _StartedVerified;
  const factory AuthenticationEvent.sendOtp(String email) = _SendOtp;
}

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guolo_app/material/api_routes.dart';
import 'package:guolo_app/models/email_verified.dart';
import 'package:guolo_app/models/send_otp_request.dart';
import 'package:guolo_app/models/user.dart';
import 'package:localstorage/localstorage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/Role.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final Dio dio;

  AuthenticationBloc(this.dio) : super(const AuthenticationState.initial()) {
    on<AuthenticationEvent>((event, emit) async {
      await event.map(startedLogin: (value) async {
        try {
          emit(const AuthenticationState.loading());
          Response response = await dio.post(ApiRoute.login(), data: {
            "email": value.user.email,
            "password": value.user.password,
          });
          if (response.statusCode == 200) {
            print('Token ::' + response.data['token']);
            String token = response.data['token'];
            try {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setString('token', token);
              prefs.setString(
                  'user', JsonEncoder().convert(response.data['user']));
              localStorage.setItem('token', token);
              localStorage.setItem(
                  'user', JsonEncoder().convert(response.data['user']));
              print(response.data);
              print(prefs.getString('user'));
              emit(AuthenticationState.authenticated());
            } catch (e, trace) {
              print(e);
              print(trace);
            }
            print(response.data['token']);

            /// add interceptor
            dio.interceptors.add(InterceptorsWrapper(
              onRequest: (options, handler) async {
                options.headers['Authorization'] = 'Bearer ${token}';
                return handler.next(options);
              },
            ));
            emit(AuthenticationState.authenticated());
          } else {
            emit(const AuthenticationState.unauthenticated());
          }
        } on DioException catch (e, trace) {
          print(e);
          print(trace);
          emit(AuthenticationState.error("we have an error"));
        }
      },
          startedRegister: (value) async {
            try {
              emit(const AuthenticationState.loading());
              value.user.role = Role.user.name;
              Response result =
              await dio.post(ApiRoute.signup(), data: value.user.toJson());
              if (result.statusCode! >= 200 || result.statusCode! < 300) {
                try {
                  SharedPreferences prefs = await SharedPreferences
                      .getInstance();
                  prefs.setString('user', result.data);
                  localStorage.setItem('token', result.data['token']);
                  localStorage.setItem('user', result.data);
                } catch (e, trace) {
                  print(e);
                  print(trace);
                }
                emit(AuthenticationState.register());
              } else
              if (result.statusCode! >= 302 && result.statusCode! < 400) {
                emit(AuthenticationState.existedEmail());
              } else {
                emit(const AuthenticationState.unauthenticated());
              }
            } on Exception catch (e, trace) {
              print(e);
              print(trace);
              emit(AuthenticationState.error(e.toString()));

              if (false) {
                emit(AuthenticationState.existedEmail());
              } else {
                emit(AuthenticationState.error(e.toString()));
              }
            }
          },
          startedLogout: (_StartedLogout value) {
            emit(const AuthenticationState.unauthenticated());
          },
          startedVerified: (_StartedVerified value) async {
            emit(const AuthenticationState.loading());
            try {
              print(value.emailVerified.toJson());
              Response result = await dio.post(ApiRoute.verified(),
                  data: value.emailVerified.toJson());
              if (result.statusCode == 200) {
                emit(AuthenticationState.verified());
              } else {
                emit(const AuthenticationState.unauthenticated());
              }
            } catch (e, trace) {
              emit(const AuthenticationState.error("we have an error"));

              print(e);
            }
          },
          sendOtp: (_SendOtp value) async {
            emit(const AuthenticationState.loading());
            try {
              print(value.email);
              Response result = await dio.post(ApiRoute.sendOtp(),
                  data: new SendOtpRequest(email: value.email).toJson());
              if (result.statusCode == 200) {
                emit(AuthenticationState.otpSend());
              } else {
                emit(const AuthenticationState.unauthenticated());
              }
            } catch (e, trace) {
              emit(const AuthenticationState.error("we have an error"));
            }
          },
          updateUser: (_UpdateUser value) async {
            try {
              emit(AuthenticationState.loading());
              Response res = await dio.put(
                  ApiRoute.update(), data: value.user.toJson());
              localStorage.setItem('user', JsonEncoder().convert(res.data));
              emit(AuthenticationState.authenticated());
            } catch (e, trace) {
              print(e);
              print(trace);
              emit(AuthenticationState.error(e.toString()));
            }
          });
    });
  }
}

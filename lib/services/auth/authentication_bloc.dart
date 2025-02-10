import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:guolo_app/material/api_routes.dart';
import 'package:guolo_app/models/email_verified.dart';
import 'package:guolo_app/models/send_otp_request.dart';
import 'package:guolo_app/models/user.dart';
import 'package:localstorage/localstorage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as sup;

import '../../models/Role.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final Dio dio;

  Future<sup.AuthResponse> _googleSignIn() async {
    /// TODO: update the Web client ID with your own.
    ///
    /// Web Client ID that you registered with Google Cloud.
    const webClientId = 'my-web.apps.googleusercontent.com';

    /// TODO: update the iOS client ID with your own.
    ///
    /// iOS Client ID that you registered with Google Cloud.
    const androidClientId = 'my-android.apps.googleusercontent.com';

    // Google sign in on Android will work without providing the Android
    // Client ID registered on Google Cloud.

    final GoogleSignIn googleSignIn = GoogleSignIn(
      clientId:
          '482575205002-ctl02skn4e1ntqjrb6g90khl0or6an5p.apps.googleusercontent.com',
    );
    final googleUser = await googleSignIn.signIn();
    final googleAuth = await googleUser!.authentication;
    final accessToken = googleAuth.accessToken;
    final idToken = googleAuth.idToken;

    if (accessToken == null) {
      throw 'No Access Token found.';
    }
    if (idToken == null) {
      throw 'No ID Token found.';
    }

    final sup.Supabase supabase = sup.Supabase.instance;
    return supabase.client.auth.signInWithIdToken(
      provider: sup.OAuthProvider.google,
      idToken: idToken,
      accessToken: accessToken,
    );
  }

  AuthenticationBloc(this.dio) : super(const AuthenticationState.initial()) {
    on<AuthenticationEvent>((event, emit) async {
      await event.map(googleLogin: (_) async {
        try{
          emit(AuthenticationState.loading());

          sup.AuthResponse response = await _googleSignIn();
          if (response.user != null) {
            emit(AuthenticationState.authenticated());
          }else{
            emit(AuthenticationState.unauthenticated());
          }
        } on Exception catch (e, trace) {
          print(e);
          print(trace);
          emit(AuthenticationState.error(e.toString()));
        }

      }, startedLogin: (value) async {
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
      }, startedRegister: (value) async {
        try {
          emit(const AuthenticationState.loading());
          value.user.role = Role.user.name;
          Response result =
              await dio.post(ApiRoute.signup(), data: value.user.toJson());
          if (result.statusCode! >= 200 || result.statusCode! < 300) {
            try {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.setString('user', result.data);
              localStorage.setItem('token', result.data['token']);
              localStorage.setItem('user', result.data);
            } catch (e, trace) {
              print(e);
              print(trace);
            }
            emit(AuthenticationState.register());
          } else if (result.statusCode! >= 302 && result.statusCode! < 400) {
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
      }, startedLogout: (_StartedLogout value) {
        localStorage.clear();
        emit(const AuthenticationState.unauthenticated());
      }, startedVerified: (_StartedVerified value) async {
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
      }, sendOtp: (_SendOtp value) async {
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
      }, updateUser: (_UpdateUser value) async {
        try {
          emit(AuthenticationState.loading());
          Response res =
              await dio.put(ApiRoute.update(), data: value.user.toJson());
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

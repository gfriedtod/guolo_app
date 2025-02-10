import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guolo_app/material/api_routes.dart';
import 'package:guolo_app/models/chat_message.dart';
import 'package:localstorage/localstorage.dart';

import '../../models/user.dart';

part 'message_event.dart';
part 'message_state.dart';
part 'message_bloc.freezed.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final Dio dio;
  MessageBloc(this.dio) : super(const MessageState.initial()) {
    on<MessageEvent>((event, emit) async {

    await  event.maybeWhen(orElse:() {}, started: (ChatMessage message) async {
        try{
          emit(const MessageState.loading([]));
          ChatMessage chatMessage = event.message;
          chatMessage.from = User.fromJson(JsonDecoder().convert(localStorage.getItem('user')!)).email;
          await dio.post(ApiRoute.message(), data:
            chatMessage.toJson()
          );
          emit(const MessageState.success([]));
        } catch (e) {
          emit(MessageState.error(e.toString()));
        }

      });




    });
  }
}

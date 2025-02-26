import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dart_amqp/dart_amqp.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guolo_app/material/api_routes.dart';
import 'package:guolo_app/models/chat_message.dart';
import 'package:guolo_app/repositorys/message_repository.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:localstorage/localstorage.dart';

import '../../models/user.dart';

part 'message_event.dart';
part 'message_state.dart';
part 'message_bloc.freezed.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final Dio dio;
  final MessageRepository messageRepository;

  _onInit(_Init event, Emitter<MessageState> emit) {
    emit(MessageState.success(messageRepository.messageBox.listenable()));
  }

  _onNewMessage(_Started event, Emitter<MessageState> emit) async {
    print("ok");
    try {
      // emit(MessageState.loading(messageRepository.messageBox.listenable()));
      ChatMessage chatMessage = event.message;
      chatMessage.from =
          User.fromJson(JsonDecoder().convert(localStorage.getItem('user')!))
              .email;
      messageRepository.sendMessage(event.message);
      // await dio.post(ApiRoute.message(), data: chatMessage.toJson());
      emit(
          MessageState.success(Hive.box<ChatMessage>('messages').listenable()));
    } catch (e) {
      emit(MessageState.error(e.toString()));
    }
  }

  MessageBloc(this.dio, this.messageRepository)
      : super(const MessageState.initial()) {
    on<_Init>(_onInit);
    on<_Started>(_onNewMessage);
    messageRepository.initChannel().then((_){

      messageRepository.userConsumer.listen((message) {
        print("a new messages comming");
        ChatMessage chatMessage =
        ChatMessage.fromJson(JsonDecoder().convert(message.payloadAsString));
        chatMessage.isUser = false;
        messageRepository.messageBox.add(chatMessage);
        if (!isClosed) { // Vérifiez si le Bloc est fermé
          add(MessageEvent.init());
        }
      });

    }).catchError((error) {
      print("Erreur de connexion à RabbitMQ : $error");
    });

  }
}

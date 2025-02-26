import 'dart:async';
import 'dart:convert';

import 'package:dart_amqp/dart_amqp.dart';
// import 'package:flutter_background_executor/flutter_background_executor.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:localstorage/localstorage.dart';

import '../models/chat_message.dart';
import '../models/user.dart';

class MessageRepository {
  final Box<ChatMessage> messageBox = Hive.box<ChatMessage>('messages');

  ConnectionSettings settings = ConnectionSettings(
      host: "37.60.239.221",
      port: 5672,
      authProvider: PlainAuthenticator("guest", "guest"));
  late Client client;
  late Channel channel;
  late Exchange exchange;
  late Queue queue;
  late Queue userQueue;
  late Consumer userConsumer;
  MessageRepository() {
    client = Client(settings: settings);
  }

  Future<void>initChannel() async {
    channel = await client.channel();
    // queue = await channel.queue("admin");
    queue = await channel.queue("admin", durable: true);
    User user =
    User.fromJson(JsonDecoder().convert(localStorage.getItem('user')!));
    userQueue= await channel.queue(user.id!,declare: true);
    userConsumer = await userQueue.consume();
  }



  sendMessage(ChatMessage message) async {
    final box = Hive.box<ChatMessage>('messages');
    box.add(message);
    queue.publish(message.toJson());
  }

}


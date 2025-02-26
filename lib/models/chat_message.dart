import 'package:guolo_app/models/user.dart';
import 'package:hive_flutter/adapters.dart';

part 'chat_message.g.dart';
@HiveType(typeId: 0)
class ChatMessage extends HiveObject  {
  //corps du message
  @HiveField(0)
  final String message;
  //date du message
  @HiveField(1)
  final String? date;
  //si isUser = true c'est le message de l'utilisateur sinon celui du bot
  @HiveField(2)
  bool? isUser = false;
  User? user;

  String? from;

   ChatMessage({
    required this.message,
    required this.date,
    required this.isUser,
     required this.user
  });

   static fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      message: json['message'],
      date: json['date'],
      isUser: json['isUser'],
        user: json['user']
    );
  }

  toJson() => {'message': message,'from': from, 'date': date, 'isUser': isUser, 'user': user};
}
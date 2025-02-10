class ChatMessage {
  //corps du message
  final String message;
  //date du message
  final String date;
  //si isUser = true c'est le message de l'utilisateur sinon celui du bot
  final bool isUser;

  String? from;

   ChatMessage({
    required this.message,
    required this.date,
    required this.isUser
  });

   fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      message: json['message'],
      date: json['date'],
      isUser: json['isUser']
    );
  }

  toJson() => {'message': message,'from': from, 'date': date, 'isUser': isUser};
}
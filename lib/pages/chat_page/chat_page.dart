import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guolo_app/services/message/message_bloc.dart';

import '../../components/back_arrow.dart';
import '../../components/bot_message.dart';
import '../../components/user_message.dart';
import '../../models/chat_message.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextEditingController controller = TextEditingController();

    List<ChatMessage> messages = [
      //const ChatMessage(text: "Hello dear, i love you so much", date: "14:21 PM", isUser: true),

      ChatMessage(
          message:
              "Salut , poser toutes vos preocupation ici et nous vous repndront par mail ",
          date: "14:54 PM",
          isUser: false)
    ];

    return SizedBox(
      height: height * 0.9,
      child: BlocProvider(
        create: (context) => MessageBloc(RepositoryProvider.of<Dio>(context)),
        child: BlocConsumer<MessageBloc, MessageState>(
          listener: (context, state) {
            state.maybeWhen(
                orElse: () {},
                error: (error) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.red, content: Text(error)));
                },
                success: (messages) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("message envoyé avec succés")));
                });
          },
          builder: (context, state) {
            return Container(
              color: Colors.white.withOpacity(0.95),
              child: SingleChildScrollView(
                child: SafeArea(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [],
                        ),
                      ),
                      SizedBox(
                        width: width / 1.1,
                        height: height * 0.65,
                        child: SingleChildScrollView(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: messages.map((message) {
                                if (message.isUser) {
                                  return UserMessage(
                                      text: message.message,
                                      date: message.date);
                                }
                                return BotMessage(
                                    text: message.message, date: message.date);
                              }).toList()),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: TextFormField(
                            controller: controller,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              focusColor: Colors.white,
                              hintText: "Ask anything...",
                              hintStyle: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontWeight: FontWeight.w400),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40)),
                              prefixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.attach_file),
                              ),
                              suffixIcon: state.maybeWhen(
                                  orElse: () => IconButton(
                                        onPressed: () {
                                          messages.add(ChatMessage(
                                              message: controller.text,
                                              date: '',
                                              isUser: true));

                                          context.read<MessageBloc>().add(
                                              MessageEvent.started(ChatMessage(
                                                  message: controller.text,
                                                  date: '',
                                                  isUser: true)));
                                        },
                                        icon: const Icon(
                                          Icons.send_sharp,
                                          size: 30,
                                        ),
                                      ),
                                  loading: (_) =>
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: const CircularProgressIndicator(),
                                      )),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

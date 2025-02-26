import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:guolo_app/repositorys/message_repository.dart';
import 'package:guolo_app/services/message/message_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:localstorage/localstorage.dart';

import '../../components/bot_message.dart';
import '../../components/user_message.dart';
import '../../models/chat_message.dart';
import '../../models/user.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextEditingController controller = TextEditingController();

    return SizedBox(
      height: height * 0.9,
      child: BlocProvider(
        create: (context) => MessageBloc(
          RepositoryProvider.of<Dio>(context),
          RepositoryProvider.of<MessageRepository>(context),
        )..add(MessageEvent.init()), // Initialise le bloc
        child: BlocConsumer<MessageBloc, MessageState>(
          listener: (context, state) {
            state.maybeWhen(
              error: (error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(error),
                  ),
                );
              },
              success: (_) {
                // ScaffoldMessenger.of(context).showSnackBar(
                //   const SnackBar(content: Text("Message envoyé avec succès")),
                // );
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            // context.read<MessageBloc>().add(MessageEvent.init());
            print(state);
            return Container(
              color: Colors.white.withOpacity(0.9),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    // Container(
                    //   color: Colors.white.withOpacity(0.95),
                    //   child: SafeArea(
                    //     child: Padding(
                    //       padding: const EdgeInsets.all(20.0),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: [],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                    BotMessage(
                        text:
                            'Hey , je suis guolo bot, pour toutes tes preocupations, contacte moi 😊',
                        date: ''),
                    Expanded(
                      child: SafeArea(
                        child: BlocBuilder<MessageBloc, MessageState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              success: (messages) {
                                return ValueListenableBuilder(
                                    valueListenable:
                                        Hive.box<ChatMessage>('messages')
                                            .listenable(),
                                    builder: (context, value, child) {
                                      final controller = ScrollController();

                                      WidgetsBinding.instance
                                          .addPostFrameCallback((_) {
                                        if (controller.hasClients) {
                                          controller.animateTo(
                                            controller.position.maxScrollExtent,
                                            duration:
                                                Duration(milliseconds: 300),
                                            curve: Curves.easeOut,
                                          );
                                        }
                                      });
                                      return ListView.builder(
                                        controller: controller,
                                        // itemExtent: controller.position.maxScrollExtent,
                                        dragStartBehavior:
                                            DragStartBehavior.down,

                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        itemCount: value.length,
                                        itemBuilder: (context, index) {
                                          final message = value.get(index);
                                          if (value.get(index)!.isUser ??
                                              true) {
                                            return UserMessage(
                                              text: message!.message,
                                              date: message!.date,
                                            );
                                          }
                                          return BotMessage(
                                            text: message!.message,
                                            date: message!.date,
                                          );
                                        },
                                      );
                                    });
                              },
                              orElse: () {
                                return Container();
                              },
                            );
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextFormField(
                          controller: controller,
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            focusColor: Colors.white,
                            hintText: "Posez votre question...",
                            hintStyle: TextStyle(
                              color: Colors.grey.shade500,
                              fontWeight: FontWeight.w400,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.attach_file),
                            ),
                            suffixIcon: state.maybeWhen(
                              loading: (_) => const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: CircularProgressIndicator(),
                              ),
                              orElse: () => IconButton(
                                onPressed: () {
                                  if (controller.text.trim().isNotEmpty) {
                                    final newMessage = ChatMessage(
                                      message: controller.text,
                                      date: DateTime.now().toString(),
                                      isUser: true,
                                      user: User.fromJson(JsonDecoder().convert(
                                          localStorage.getItem('user')!)),
                                    );

                                    context.read<MessageBloc>().add(
                                          MessageEvent.started(newMessage),
                                        );

                                    controller
                                        .clear(); // Vider le champ après envoi
                                  }
                                },
                                icon: const Icon(
                                  Icons.send_sharp,
                                  size: 30,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

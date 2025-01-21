import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guolo_app/models/lottery_entity.dart';
import 'package:guolo_app/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/buy_ticket.dart';
import '../../models/lottery_ticket_entity.dart';
import '../../models/ticket_entity.dart';
import '../../repositorys/ticket_repository.dart';

part 'ticket_event.dart';
part 'ticket_state.dart';
part 'ticket_bloc.freezed.dart';

class TicketBloc extends Bloc<TicketEvent, TicketState> {
  final TicketRepository ticketRepository;
  TicketBloc({required this.ticketRepository})
      : super(const TicketState.initial()) {
    on<TicketEvent>((event, emit) async {
      await event.map(
          started: (_Started value) {},
          getTicket: (_GetTicket value) async {
            emit(const TicketState.loading());
            try {
              List<TicketEntity> tickets =
                  await ticketRepository.getATicket(value.id, value.number);
              emit(TicketState.success(tickets));
            } on DioException catch (e) {
              emit(TicketState.error(e.response!.data.toString()));
            }
          },
          buyTicket: (value) async {
            emit(const TicketState.loading());
            try {
              List<TicketEntity> tickets =
                  await ticketRepository.buyTicket(value.buyTicket);
              emit(TicketState.success(tickets));
            } on DioException catch (e) {
              emit(TicketState.error(e.response!.data.toString()));
            }
          },
          fetchStory: (_) async {
            emit(TicketState.loading());
            try {
              SharedPreferences preferences =
                  await SharedPreferences.getInstance();
              User user = User.fromJson(
                  JsonDecoder().convert(preferences.getString('user')!));
              List<LotteryTicketEntity> tickets =
                  await ticketRepository.fetchStory(user.id!);
              emit(TicketState.successStory(tickets));
            } on DioException catch (e) {}
          });
    });
  }
}

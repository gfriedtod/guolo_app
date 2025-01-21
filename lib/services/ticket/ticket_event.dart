part of 'ticket_bloc.dart';

@freezed
class TicketEvent with _$TicketEvent {
  const factory TicketEvent.started() = _Started;
  const factory TicketEvent.getTicket(String id , int number) = _GetTicket;
  const factory TicketEvent.buyTicket(BuyTicket buyTicket) = _BuyTicket;
  const factory TicketEvent.fetchStory() = _FetchStory;
}

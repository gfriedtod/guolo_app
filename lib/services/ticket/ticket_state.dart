part of 'ticket_bloc.dart';

@freezed
class TicketState with _$TicketState {
  const factory TicketState.initial() = _Initial;
  const factory TicketState.loading() = _Loading;
  const factory TicketState.error(String error) = _Error;
  const factory TicketState.success(List<TicketEntity> tickets) = _Success;
  const factory TicketState.successStory(List<LotteryTicketEntity> lotteryTicket) = _SuccessStory;

}

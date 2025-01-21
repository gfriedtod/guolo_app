part of 'lottery_bloc.dart';

@freezed
class LotteryEvent with _$LotteryEvent {
  const factory LotteryEvent.started() = _Started;
}

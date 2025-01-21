part of 'lottery_bloc.dart';

@freezed
class LotteryState with _$LotteryState {
  const factory LotteryState.initial() = _Initial;
  const factory LotteryState.loading() = _Loading;
  const factory LotteryState.error(String error) = _Error;
  const factory LotteryState.success(List<LotteryEntity> lotteries) = _Success;
}

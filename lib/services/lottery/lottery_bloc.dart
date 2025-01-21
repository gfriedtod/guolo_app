import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guolo_app/models/lottery_entity.dart';
import 'package:guolo_app/repositorys/lottery_repository.dart';

part 'lottery_event.dart';
part 'lottery_state.dart';
part 'lottery_bloc.freezed.dart';

class LotteryBloc extends Bloc<LotteryEvent, LotteryState> {
  final LotterieRepository _lotteryRepository;
  LotteryBloc(this._lotteryRepository) : super(const LotteryState.initial()) {
    on<LotteryEvent>((event, emit) async {
      await event.map(started: (_) async {
        try {
          emit(const LotteryState.loading());
          final lotteries = await _lotteryRepository.getLotteries();
          emit(LotteryState.success(lotteries));
        } catch (e) {
          emit(LotteryState.error(e.toString()));

          throw e;
        }
      });
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guolo_app/models/payment_proof_entity.dart';
import 'package:guolo_app/repositorys/payment_proof_repository.dart';

part 'payment_proof_state.dart';
part 'payment_proof_cubit.freezed.dart';

class PaymentProofCubit extends Cubit<PaymentProofState> {
  final PaymentProofRepository paymentProofRepository;
  PaymentProofCubit(this.paymentProofRepository)
      : super(const PaymentProofState.initial());

   init(String id) async {
    emit(const PaymentProofState.loading());
    try {
      List<PaymentProofEntity> paymentProof = await paymentProofRepository.fetchByLotteryId(id);
      emit(PaymentProofState.success(paymentProof));
    } catch (e,trace) {
      print(e);
      emit(PaymentProofState.error(e.toString()));

      throw trace;
    }
  }
}

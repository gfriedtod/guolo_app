import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:guolo_app/models/payment_request_entity.dart';
import 'package:guolo_app/repositorys/payment_request_repository.dart';

import '../../material/api_routes.dart';

part 'payment_request_state.dart';
part 'payment_request_cubit.freezed.dart';

class PaymentRequestCubit extends Cubit<PaymentRequestState> {
  final PaymentRequestRepository repository;
  PaymentRequestCubit(this.repository)
      : super(const PaymentRequestState.initial());

  void init() {
    emit(const PaymentRequestState.initial());
  }

  void sendPaymentRequest(PaymentRequestEntity request) async {
    try {
      emit(const PaymentRequestState.loading());
      await repository.sendRequest(request);
      emit(PaymentRequestState.success());
    } catch (e) {
      emit(PaymentRequestState.error(e.toString()));
    }
  }
}

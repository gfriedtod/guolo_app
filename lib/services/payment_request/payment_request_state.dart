part of 'payment_request_cubit.dart';

@freezed
class PaymentRequestState with _$PaymentRequestState {
  const factory PaymentRequestState.initial() = _Initial;
  const factory PaymentRequestState.loading() = _Loading;
  const factory PaymentRequestState.error(String error) = _Error;
  const factory PaymentRequestState.success() = _Success;
}

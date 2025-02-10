part of 'payment_proof_cubit.dart';

@freezed
class PaymentProofState with _$PaymentProofState {
  const factory PaymentProofState.initial() = _Initial;
  const factory PaymentProofState.loading() = _Loading;
  const factory PaymentProofState.error(String error) = _Error;
  const factory PaymentProofState.success(List<PaymentProofEntity> paymentProof) = _Success;
}

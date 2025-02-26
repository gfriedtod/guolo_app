part of 'message_bloc.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState.initial() = _Initial;
  const factory MessageState.loading(ValueListenable<Box<ChatMessage>> messages) = _Loading;
  const factory MessageState.error(String error) = _Error;
  const factory MessageState.success(ValueListenable<Box<ChatMessage>> messages) = _Success;
}

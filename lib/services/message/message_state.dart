part of 'message_bloc.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState.initial() = _Initial;
  const factory MessageState.loading(List<ChatMessage> messages) = _Loading;
  const factory MessageState.error(String error) = _Error;
  const factory MessageState.success(List<ChatMessage> messages) = _Success;
}

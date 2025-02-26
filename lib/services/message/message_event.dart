part of 'message_bloc.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.started(ChatMessage message) = _Started;
  const factory MessageEvent.init() = _Init;

}

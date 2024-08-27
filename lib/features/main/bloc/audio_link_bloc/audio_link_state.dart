part of 'audio_link_bloc.dart';

@freezed
class AudioLinkState with _$AudioLinkState {
  const factory AudioLinkState.initial() = _AudioLinkInitialState;
  const factory AudioLinkState.failed(String message) = _AudioLinkFailedState;
  const factory AudioLinkState.sended() = _AudioLinkSendedState;
}

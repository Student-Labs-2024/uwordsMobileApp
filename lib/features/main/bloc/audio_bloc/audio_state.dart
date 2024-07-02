part of 'audio_bloc.dart';

@freezed
class AudioState with _$AudioState {
  const factory AudioState.initial() = _AudioInitial;
  const factory AudioState.started() = _AudioStarted;
  const factory AudioState.stopped() = _AudioStopped;
  const factory AudioState.failed() = _AudioFailed;
  const factory AudioState.sended() = _AudioSended;
  const factory AudioState.notValidLink() = _AudioNotValidLink;
}

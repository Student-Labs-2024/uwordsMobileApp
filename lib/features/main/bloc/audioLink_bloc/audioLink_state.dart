part of 'audioLink_bloc.dart';

@freezed
class AudioLinkState with _$AudioLinkState {
  const factory AudioLinkState.initial() = _AudioLinkInitial;
  const factory AudioLinkState.failed(String message) = _AudioLinkFailed;
  const factory AudioLinkState.sended() = _AudioLinkSended;
}

import "package:freezed_annotation/freezed_annotation.dart";
import "package:nice_flutter_kit/nice_flutter_kit.dart";

part "sign-in.state.freezed.dart";
part "sign-in.state.g.dart";

@freezed
class NiceSignInState with _$NiceSignInState implements NiceBaseState {
  const factory NiceSignInState({
    @Default(false) bool loading,
    @Default(false) bool error,

    /// Whether the user entered invalid credentials
    @Default(false) bool invalidCredentials,
  }) = _NiceSignInState;

  const NiceSignInState._();

  factory NiceSignInState.fromJson(Map<String, dynamic> json) => _$NiceSignInStateFromJson(json);
}

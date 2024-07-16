import "package:freezed_annotation/freezed_annotation.dart";
import "package:nice_flutter_kit/nice_flutter_kit.dart";

part "auth.state.freezed.dart";
part "auth.state.g.dart";

@freezed
class NiceAuthState<User extends Object, Account extends Object>
    with _$NiceAuthState<User, Account>
    implements NiceBaseState {
  const factory NiceAuthState({
    @Default(false) bool loading,
    @Default(false) bool error,
    @Default(false) bool initialized,
    @JsonKey(includeFromJson: false, includeToJson: false) User? user,
    @JsonKey(includeFromJson: false, includeToJson: false) Account? account,
  }) = _NiceAuthState<User, Account>;

  /// Whether a user is signed in
  bool get isSignedIn => user != null;

  /// Whether the user is registered
  /// [user] should never be null if [account] is not null
  ///
  /// A user is registered if he's signed in ([isSignedIn]) and has an account
  bool get isRegistered => account != null;

  const NiceAuthState._();

  factory NiceAuthState.fromJson(Map<String, dynamic> json) => _$NiceAuthStateFromJson(json);
}

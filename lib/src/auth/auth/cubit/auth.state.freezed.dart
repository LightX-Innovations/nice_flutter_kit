// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NiceAuthState<User, Account>
    _$NiceAuthStateFromJson<User extends Object, Account extends Object>(
        Map<String, dynamic> json) {
  return _NiceAuthState<User, Account>.fromJson(json);
}

/// @nodoc
mixin _$NiceAuthState<User extends Object, Account extends Object> {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;
  bool get initialized => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  Account? get account => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NiceAuthStateCopyWith<User, Account, NiceAuthState<User, Account>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NiceAuthStateCopyWith<User extends Object,
    Account extends Object, $Res> {
  factory $NiceAuthStateCopyWith(NiceAuthState<User, Account> value,
          $Res Function(NiceAuthState<User, Account>) then) =
      _$NiceAuthStateCopyWithImpl<User, Account, $Res,
          NiceAuthState<User, Account>>;
  @useResult
  $Res call(
      {bool loading,
      bool error,
      bool initialized,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      @JsonKey(includeFromJson: false, includeToJson: false) Account? account});
}

/// @nodoc
class _$NiceAuthStateCopyWithImpl<User extends Object, Account extends Object,
        $Res, $Val extends NiceAuthState<User, Account>>
    implements $NiceAuthStateCopyWith<User, Account, $Res> {
  _$NiceAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? initialized = null,
    Object? user = freezed,
    Object? account = freezed,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NiceAuthStateImplCopyWith<
    User extends Object,
    Account extends Object,
    $Res> implements $NiceAuthStateCopyWith<User, Account, $Res> {
  factory _$$NiceAuthStateImplCopyWith(_$NiceAuthStateImpl<User, Account> value,
          $Res Function(_$NiceAuthStateImpl<User, Account>) then) =
      __$$NiceAuthStateImplCopyWithImpl<User, Account, $Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool error,
      bool initialized,
      @JsonKey(includeFromJson: false, includeToJson: false) User? user,
      @JsonKey(includeFromJson: false, includeToJson: false) Account? account});
}

/// @nodoc
class __$$NiceAuthStateImplCopyWithImpl<User extends Object,
        Account extends Object, $Res>
    extends _$NiceAuthStateCopyWithImpl<User, Account, $Res,
        _$NiceAuthStateImpl<User, Account>>
    implements _$$NiceAuthStateImplCopyWith<User, Account, $Res> {
  __$$NiceAuthStateImplCopyWithImpl(_$NiceAuthStateImpl<User, Account> _value,
      $Res Function(_$NiceAuthStateImpl<User, Account>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? initialized = null,
    Object? user = freezed,
    Object? account = freezed,
  }) {
    return _then(_$NiceAuthStateImpl<User, Account>(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      account: freezed == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as Account?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NiceAuthStateImpl<User extends Object, Account extends Object>
    extends _NiceAuthState<User, Account> {
  const _$NiceAuthStateImpl(
      {this.loading = false,
      this.error = false,
      this.initialized = false,
      @JsonKey(includeFromJson: false, includeToJson: false) this.user,
      @JsonKey(includeFromJson: false, includeToJson: false) this.account})
      : super._();

  factory _$NiceAuthStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$NiceAuthStateImplFromJson(json);

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;
  @override
  @JsonKey()
  final bool initialized;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final User? user;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Account? account;

  @override
  String toString() {
    return 'NiceAuthState<$User, $Account>(loading: $loading, error: $error, initialized: $initialized, user: $user, account: $account)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NiceAuthStateImpl<User, Account> &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.initialized, initialized) ||
                other.initialized == initialized) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.account, account));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      error,
      initialized,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(account));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NiceAuthStateImplCopyWith<User, Account,
          _$NiceAuthStateImpl<User, Account>>
      get copyWith => __$$NiceAuthStateImplCopyWithImpl<User, Account,
          _$NiceAuthStateImpl<User, Account>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NiceAuthStateImplToJson<User, Account>(
      this,
    );
  }
}

abstract class _NiceAuthState<User extends Object, Account extends Object>
    extends NiceAuthState<User, Account> {
  const factory _NiceAuthState(
      {final bool loading,
      final bool error,
      final bool initialized,
      @JsonKey(includeFromJson: false, includeToJson: false) final User? user,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Account? account}) = _$NiceAuthStateImpl<User, Account>;
  const _NiceAuthState._() : super._();

  factory _NiceAuthState.fromJson(Map<String, dynamic> json) =
      _$NiceAuthStateImpl<User, Account>.fromJson;

  @override
  bool get loading;
  @override
  bool get error;
  @override
  bool get initialized;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  User? get user;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  Account? get account;
  @override
  @JsonKey(ignore: true)
  _$$NiceAuthStateImplCopyWith<User, Account,
          _$NiceAuthStateImpl<User, Account>>
      get copyWith => throw _privateConstructorUsedError;
}

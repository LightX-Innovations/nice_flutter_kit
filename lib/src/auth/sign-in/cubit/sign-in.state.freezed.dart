// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign-in.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NiceSignInState _$NiceSignInStateFromJson(Map<String, dynamic> json) {
  return _NiceSignInState.fromJson(json);
}

/// @nodoc
mixin _$NiceSignInState {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  /// Whether the user entered invalid credentials
  bool get invalidCredentials => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NiceSignInStateCopyWith<NiceSignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NiceSignInStateCopyWith<$Res> {
  factory $NiceSignInStateCopyWith(
          NiceSignInState value, $Res Function(NiceSignInState) then) =
      _$NiceSignInStateCopyWithImpl<$Res, NiceSignInState>;
  @useResult
  $Res call({bool loading, bool error, bool invalidCredentials});
}

/// @nodoc
class _$NiceSignInStateCopyWithImpl<$Res, $Val extends NiceSignInState>
    implements $NiceSignInStateCopyWith<$Res> {
  _$NiceSignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? invalidCredentials = null,
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
      invalidCredentials: null == invalidCredentials
          ? _value.invalidCredentials
          : invalidCredentials // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NiceSignInStateImplCopyWith<$Res>
    implements $NiceSignInStateCopyWith<$Res> {
  factory _$$NiceSignInStateImplCopyWith(_$NiceSignInStateImpl value,
          $Res Function(_$NiceSignInStateImpl) then) =
      __$$NiceSignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, bool error, bool invalidCredentials});
}

/// @nodoc
class __$$NiceSignInStateImplCopyWithImpl<$Res>
    extends _$NiceSignInStateCopyWithImpl<$Res, _$NiceSignInStateImpl>
    implements _$$NiceSignInStateImplCopyWith<$Res> {
  __$$NiceSignInStateImplCopyWithImpl(
      _$NiceSignInStateImpl _value, $Res Function(_$NiceSignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? invalidCredentials = null,
  }) {
    return _then(_$NiceSignInStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      invalidCredentials: null == invalidCredentials
          ? _value.invalidCredentials
          : invalidCredentials // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NiceSignInStateImpl extends _NiceSignInState {
  const _$NiceSignInStateImpl(
      {this.loading = false,
      this.error = false,
      this.invalidCredentials = false})
      : super._();

  factory _$NiceSignInStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$NiceSignInStateImplFromJson(json);

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;

  /// Whether the user entered invalid credentials
  @override
  @JsonKey()
  final bool invalidCredentials;

  @override
  String toString() {
    return 'NiceSignInState(loading: $loading, error: $error, invalidCredentials: $invalidCredentials)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NiceSignInStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.invalidCredentials, invalidCredentials) ||
                other.invalidCredentials == invalidCredentials));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, loading, error, invalidCredentials);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NiceSignInStateImplCopyWith<_$NiceSignInStateImpl> get copyWith =>
      __$$NiceSignInStateImplCopyWithImpl<_$NiceSignInStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NiceSignInStateImplToJson(
      this,
    );
  }
}

abstract class _NiceSignInState extends NiceSignInState {
  const factory _NiceSignInState(
      {final bool loading,
      final bool error,
      final bool invalidCredentials}) = _$NiceSignInStateImpl;
  const _NiceSignInState._() : super._();

  factory _NiceSignInState.fromJson(Map<String, dynamic> json) =
      _$NiceSignInStateImpl.fromJson;

  @override
  bool get loading;
  @override
  bool get error;
  @override

  /// Whether the user entered invalid credentials
  bool get invalidCredentials;
  @override
  @JsonKey(ignore: true)
  _$$NiceSignInStateImplCopyWith<_$NiceSignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NiceAuthStateImpl<User, Account>
    _$$NiceAuthStateImplFromJson<User extends Object, Account extends Object>(
            Map<String, dynamic> json) =>
        _$NiceAuthStateImpl<User, Account>(
          loading: json['loading'] as bool? ?? false,
          error: json['error'] as bool? ?? false,
          initialized: json['initialized'] as bool? ?? false,
        );

Map<String, dynamic>
    _$$NiceAuthStateImplToJson<User extends Object, Account extends Object>(
            _$NiceAuthStateImpl<User, Account> instance) =>
        <String, dynamic>{
          'loading': instance.loading,
          'error': instance.error,
          'initialized': instance.initialized,
        };

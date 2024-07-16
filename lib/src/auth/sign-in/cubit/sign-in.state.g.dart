// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign-in.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NiceSignInStateImpl _$$NiceSignInStateImplFromJson(
        Map<String, dynamic> json) =>
    _$NiceSignInStateImpl(
      loading: json['loading'] as bool? ?? false,
      error: json['error'] as bool? ?? false,
      invalidCredentials: json['invalidCredentials'] as bool? ?? false,
    );

Map<String, dynamic> _$$NiceSignInStateImplToJson(
        _$NiceSignInStateImpl instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'error': instance.error,
      'invalidCredentials': instance.invalidCredentials,
    };

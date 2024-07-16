// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base-list.state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NiceBaseListStateImpl<D> _$$NiceBaseListStateImplFromJson<D>(
        Map<String, dynamic> json) =>
    _$NiceBaseListStateImpl<D>(
      loading: json['loading'] as bool? ?? false,
      error: json['error'] as bool? ?? false,
      initialLoadCompleted: json['initialLoadCompleted'] as bool? ?? false,
      nextPage: (json['nextPage'] as num?)?.toInt(),
      pageSize: (json['pageSize'] as num?)?.toInt() ?? 20,
      total: (json['total'] as num?)?.toInt() ?? 0,
      searchQuery: json['searchQuery'] as String?,
      loadingPage: json['loadingPage'] as bool? ?? false,
    );

Map<String, dynamic> _$$NiceBaseListStateImplToJson<D>(
        _$NiceBaseListStateImpl<D> instance) =>
    <String, dynamic>{
      'loading': instance.loading,
      'error': instance.error,
      'initialLoadCompleted': instance.initialLoadCompleted,
      'nextPage': instance.nextPage,
      'pageSize': instance.pageSize,
      'total': instance.total,
      'searchQuery': instance.searchQuery,
      'loadingPage': instance.loadingPage,
    };

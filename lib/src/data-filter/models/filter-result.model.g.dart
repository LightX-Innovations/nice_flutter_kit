// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filter-result.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NiceFilterResultModel<T>
    _$NiceFilterResultModelFromJson<T extends FreezedClass<dynamic>>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
        NiceFilterResultModel<T>(
          page: NiceFilterResultPageModel.fromJson(
              json['page'] as Map<String, dynamic>),
          total: (json['total'] as num).toInt(),
          values: (json['values'] as List<dynamic>).map(fromJsonT).toList(),
          subscriptionIds: (json['subscriptionIds'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList(),
        );

Map<String, dynamic>
    _$NiceFilterResultModelToJson<T extends FreezedClass<dynamic>>(
  NiceFilterResultModel<T> instance,
  Object? Function(T value) toJsonT,
) =>
        <String, dynamic>{
          'page': instance.page,
          'total': instance.total,
          'values': instance.values.map(toJsonT).toList(),
          'subscriptionIds': instance.subscriptionIds,
        };

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter-result.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NiceFilterResultModel<T extends FreezedClass<dynamic>> {
  NiceFilterResultPageModel get page => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  List<T> get values => throw _privateConstructorUsedError;
  List<int>? get subscriptionIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NiceFilterResultModelCopyWith<T, NiceFilterResultModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NiceFilterResultModelCopyWith<T extends FreezedClass<dynamic>,
    $Res> {
  factory $NiceFilterResultModelCopyWith(NiceFilterResultModel<T> value,
          $Res Function(NiceFilterResultModel<T>) then) =
      _$NiceFilterResultModelCopyWithImpl<T, $Res, NiceFilterResultModel<T>>;
  @useResult
  $Res call(
      {NiceFilterResultPageModel page,
      int total,
      List<T> values,
      List<int>? subscriptionIds});

  $NiceFilterResultPageModelCopyWith<$Res> get page;
}

/// @nodoc
class _$NiceFilterResultModelCopyWithImpl<T extends FreezedClass<dynamic>, $Res,
        $Val extends NiceFilterResultModel<T>>
    implements $NiceFilterResultModelCopyWith<T, $Res> {
  _$NiceFilterResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? total = null,
    Object? values = null,
    Object? subscriptionIds = freezed,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as NiceFilterResultPageModel,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<T>,
      subscriptionIds: freezed == subscriptionIds
          ? _value.subscriptionIds
          : subscriptionIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NiceFilterResultPageModelCopyWith<$Res> get page {
    return $NiceFilterResultPageModelCopyWith<$Res>(_value.page, (value) {
      return _then(_value.copyWith(page: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NiceFilterResultModelImplCopyWith<
    T extends FreezedClass<dynamic>,
    $Res> implements $NiceFilterResultModelCopyWith<T, $Res> {
  factory _$$NiceFilterResultModelImplCopyWith(
          _$NiceFilterResultModelImpl<T> value,
          $Res Function(_$NiceFilterResultModelImpl<T>) then) =
      __$$NiceFilterResultModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {NiceFilterResultPageModel page,
      int total,
      List<T> values,
      List<int>? subscriptionIds});

  @override
  $NiceFilterResultPageModelCopyWith<$Res> get page;
}

/// @nodoc
class __$$NiceFilterResultModelImplCopyWithImpl<T extends FreezedClass<dynamic>,
        $Res>
    extends _$NiceFilterResultModelCopyWithImpl<T, $Res,
        _$NiceFilterResultModelImpl<T>>
    implements _$$NiceFilterResultModelImplCopyWith<T, $Res> {
  __$$NiceFilterResultModelImplCopyWithImpl(
      _$NiceFilterResultModelImpl<T> _value,
      $Res Function(_$NiceFilterResultModelImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? total = null,
    Object? values = null,
    Object? subscriptionIds = freezed,
  }) {
    return _then(_$NiceFilterResultModelImpl<T>(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as NiceFilterResultPageModel,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<T>,
      subscriptionIds: freezed == subscriptionIds
          ? _value._subscriptionIds
          : subscriptionIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc

class _$NiceFilterResultModelImpl<T extends FreezedClass<dynamic>>
    extends _NiceFilterResultModel<T> {
  const _$NiceFilterResultModelImpl(
      {required this.page,
      required this.total,
      required final List<T> values,
      final List<int>? subscriptionIds})
      : _values = values,
        _subscriptionIds = subscriptionIds,
        super._();

  @override
  final NiceFilterResultPageModel page;
  @override
  final int total;
  final List<T> _values;
  @override
  List<T> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  final List<int>? _subscriptionIds;
  @override
  List<int>? get subscriptionIds {
    final value = _subscriptionIds;
    if (value == null) return null;
    if (_subscriptionIds is EqualUnmodifiableListView) return _subscriptionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'NiceFilterResultModel<$T>(page: $page, total: $total, values: $values, subscriptionIds: $subscriptionIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NiceFilterResultModelImpl<T> &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            const DeepCollectionEquality()
                .equals(other._subscriptionIds, _subscriptionIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      page,
      total,
      const DeepCollectionEquality().hash(_values),
      const DeepCollectionEquality().hash(_subscriptionIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NiceFilterResultModelImplCopyWith<T, _$NiceFilterResultModelImpl<T>>
      get copyWith => __$$NiceFilterResultModelImplCopyWithImpl<T,
          _$NiceFilterResultModelImpl<T>>(this, _$identity);
}

abstract class _NiceFilterResultModel<T extends FreezedClass<dynamic>>
    extends NiceFilterResultModel<T> {
  const factory _NiceFilterResultModel(
      {required final NiceFilterResultPageModel page,
      required final int total,
      required final List<T> values,
      final List<int>? subscriptionIds}) = _$NiceFilterResultModelImpl<T>;
  const _NiceFilterResultModel._() : super._();

  @override
  NiceFilterResultPageModel get page;
  @override
  int get total;
  @override
  List<T> get values;
  @override
  List<int>? get subscriptionIds;
  @override
  @JsonKey(ignore: true)
  _$$NiceFilterResultModelImplCopyWith<T, _$NiceFilterResultModelImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

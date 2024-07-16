// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base-list.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NiceBaseListState<D> _$NiceBaseListStateFromJson<D>(Map<String, dynamic> json) {
  return _NiceBaseListState<D>.fromJson(json);
}

/// @nodoc
mixin _$NiceBaseListState<D> {
  bool get loading => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  /// Whether the initial load has been completed.
  bool get initialLoadCompleted => throw _privateConstructorUsedError;

  /// Index of the next page.
  /// If this value is null, it means that there are no next page.
  int? get nextPage => throw _privateConstructorUsedError;

  /// Current size of the pages.
  int get pageSize => throw _privateConstructorUsedError;

  /// Total item count.
  int get total => throw _privateConstructorUsedError;

  /// Search query that will be used to filter items, via the [NiceBaseListDataFilterProvider].
  String? get searchQuery => throw _privateConstructorUsedError;

  /// Query that will be used to filter items, via the [NiceBaseListDataFilterProvider].
  @JsonKey(includeFromJson: false, includeToJson: false)
  NiceFilterQueryModel? get query => throw _privateConstructorUsedError;

  /// Order that will be used to sort items, via the [NiceBaseListDataFilterProvider].
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<NiceFilterOrderModel>? get order => throw _privateConstructorUsedError;

  /// Items that have been filtered by the data filter, and are being displayed.
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<D> get values => throw _privateConstructorUsedError;

  /// Whether the base list is currently loading the next page.
  /// This is used to show [NiceBaseListBody.pageLoadingIndicator]
  bool get loadingPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NiceBaseListStateCopyWith<D, NiceBaseListState<D>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NiceBaseListStateCopyWith<D, $Res> {
  factory $NiceBaseListStateCopyWith(NiceBaseListState<D> value,
          $Res Function(NiceBaseListState<D>) then) =
      _$NiceBaseListStateCopyWithImpl<D, $Res, NiceBaseListState<D>>;
  @useResult
  $Res call(
      {bool loading,
      bool error,
      bool initialLoadCompleted,
      int? nextPage,
      int pageSize,
      int total,
      String? searchQuery,
      @JsonKey(includeFromJson: false, includeToJson: false)
      NiceFilterQueryModel? query,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<NiceFilterOrderModel>? order,
      @JsonKey(includeFromJson: false, includeToJson: false) List<D> values,
      bool loadingPage});
}

/// @nodoc
class _$NiceBaseListStateCopyWithImpl<D, $Res,
        $Val extends NiceBaseListState<D>>
    implements $NiceBaseListStateCopyWith<D, $Res> {
  _$NiceBaseListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? initialLoadCompleted = null,
    Object? nextPage = freezed,
    Object? pageSize = null,
    Object? total = null,
    Object? searchQuery = freezed,
    Object? query = freezed,
    Object? order = freezed,
    Object? values = null,
    Object? loadingPage = null,
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
      initialLoadCompleted: null == initialLoadCompleted
          ? _value.initialLoadCompleted
          : initialLoadCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as NiceFilterQueryModel?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as List<NiceFilterOrderModel>?,
      values: null == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<D>,
      loadingPage: null == loadingPage
          ? _value.loadingPage
          : loadingPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NiceBaseListStateImplCopyWith<D, $Res>
    implements $NiceBaseListStateCopyWith<D, $Res> {
  factory _$$NiceBaseListStateImplCopyWith(_$NiceBaseListStateImpl<D> value,
          $Res Function(_$NiceBaseListStateImpl<D>) then) =
      __$$NiceBaseListStateImplCopyWithImpl<D, $Res>;
  @override
  @useResult
  $Res call(
      {bool loading,
      bool error,
      bool initialLoadCompleted,
      int? nextPage,
      int pageSize,
      int total,
      String? searchQuery,
      @JsonKey(includeFromJson: false, includeToJson: false)
      NiceFilterQueryModel? query,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<NiceFilterOrderModel>? order,
      @JsonKey(includeFromJson: false, includeToJson: false) List<D> values,
      bool loadingPage});
}

/// @nodoc
class __$$NiceBaseListStateImplCopyWithImpl<D, $Res>
    extends _$NiceBaseListStateCopyWithImpl<D, $Res, _$NiceBaseListStateImpl<D>>
    implements _$$NiceBaseListStateImplCopyWith<D, $Res> {
  __$$NiceBaseListStateImplCopyWithImpl(_$NiceBaseListStateImpl<D> _value,
      $Res Function(_$NiceBaseListStateImpl<D>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? error = null,
    Object? initialLoadCompleted = null,
    Object? nextPage = freezed,
    Object? pageSize = null,
    Object? total = null,
    Object? searchQuery = freezed,
    Object? query = freezed,
    Object? order = freezed,
    Object? values = null,
    Object? loadingPage = null,
  }) {
    return _then(_$NiceBaseListStateImpl<D>(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      initialLoadCompleted: null == initialLoadCompleted
          ? _value.initialLoadCompleted
          : initialLoadCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as int?,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      searchQuery: freezed == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as NiceFilterQueryModel?,
      order: freezed == order
          ? _value._order
          : order // ignore: cast_nullable_to_non_nullable
              as List<NiceFilterOrderModel>?,
      values: null == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<D>,
      loadingPage: null == loadingPage
          ? _value.loadingPage
          : loadingPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NiceBaseListStateImpl<D> extends _NiceBaseListState<D> {
  const _$NiceBaseListStateImpl(
      {this.loading = false,
      this.error = false,
      this.initialLoadCompleted = false,
      this.nextPage,
      this.pageSize = 20,
      this.total = 0,
      this.searchQuery,
      @JsonKey(includeFromJson: false, includeToJson: false) this.query,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<NiceFilterOrderModel>? order = const [],
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<D> values = const [],
      this.loadingPage = false})
      : _order = order,
        _values = values,
        super._();

  factory _$NiceBaseListStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$NiceBaseListStateImplFromJson(json);

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool error;

  /// Whether the initial load has been completed.
  @override
  @JsonKey()
  final bool initialLoadCompleted;

  /// Index of the next page.
  /// If this value is null, it means that there are no next page.
  @override
  final int? nextPage;

  /// Current size of the pages.
  @override
  @JsonKey()
  final int pageSize;

  /// Total item count.
  @override
  @JsonKey()
  final int total;

  /// Search query that will be used to filter items, via the [NiceBaseListDataFilterProvider].
  @override
  final String? searchQuery;

  /// Query that will be used to filter items, via the [NiceBaseListDataFilterProvider].
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final NiceFilterQueryModel? query;

  /// Order that will be used to sort items, via the [NiceBaseListDataFilterProvider].
  final List<NiceFilterOrderModel>? _order;

  /// Order that will be used to sort items, via the [NiceBaseListDataFilterProvider].
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<NiceFilterOrderModel>? get order {
    final value = _order;
    if (value == null) return null;
    if (_order is EqualUnmodifiableListView) return _order;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Items that have been filtered by the data filter, and are being displayed.
  final List<D> _values;

  /// Items that have been filtered by the data filter, and are being displayed.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<D> get values {
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_values);
  }

  /// Whether the base list is currently loading the next page.
  /// This is used to show [NiceBaseListBody.pageLoadingIndicator]
  @override
  @JsonKey()
  final bool loadingPage;

  @override
  String toString() {
    return 'NiceBaseListState<$D>(loading: $loading, error: $error, initialLoadCompleted: $initialLoadCompleted, nextPage: $nextPage, pageSize: $pageSize, total: $total, searchQuery: $searchQuery, query: $query, order: $order, values: $values, loadingPage: $loadingPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NiceBaseListStateImpl<D> &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.initialLoadCompleted, initialLoadCompleted) ||
                other.initialLoadCompleted == initialLoadCompleted) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality().equals(other._order, _order) &&
            const DeepCollectionEquality().equals(other._values, _values) &&
            (identical(other.loadingPage, loadingPage) ||
                other.loadingPage == loadingPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      error,
      initialLoadCompleted,
      nextPage,
      pageSize,
      total,
      searchQuery,
      query,
      const DeepCollectionEquality().hash(_order),
      const DeepCollectionEquality().hash(_values),
      loadingPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NiceBaseListStateImplCopyWith<D, _$NiceBaseListStateImpl<D>>
      get copyWith =>
          __$$NiceBaseListStateImplCopyWithImpl<D, _$NiceBaseListStateImpl<D>>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NiceBaseListStateImplToJson<D>(
      this,
    );
  }
}

abstract class _NiceBaseListState<D> extends NiceBaseListState<D> {
  const factory _NiceBaseListState(
      {final bool loading,
      final bool error,
      final bool initialLoadCompleted,
      final int? nextPage,
      final int pageSize,
      final int total,
      final String? searchQuery,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final NiceFilterQueryModel? query,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<NiceFilterOrderModel>? order,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<D> values,
      final bool loadingPage}) = _$NiceBaseListStateImpl<D>;
  const _NiceBaseListState._() : super._();

  factory _NiceBaseListState.fromJson(Map<String, dynamic> json) =
      _$NiceBaseListStateImpl<D>.fromJson;

  @override
  bool get loading;
  @override
  bool get error;
  @override

  /// Whether the initial load has been completed.
  bool get initialLoadCompleted;
  @override

  /// Index of the next page.
  /// If this value is null, it means that there are no next page.
  int? get nextPage;
  @override

  /// Current size of the pages.
  int get pageSize;
  @override

  /// Total item count.
  int get total;
  @override

  /// Search query that will be used to filter items, via the [NiceBaseListDataFilterProvider].
  String? get searchQuery;
  @override

  /// Query that will be used to filter items, via the [NiceBaseListDataFilterProvider].
  @JsonKey(includeFromJson: false, includeToJson: false)
  NiceFilterQueryModel? get query;
  @override

  /// Order that will be used to sort items, via the [NiceBaseListDataFilterProvider].
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<NiceFilterOrderModel>? get order;
  @override

  /// Items that have been filtered by the data filter, and are being displayed.
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<D> get values;
  @override

  /// Whether the base list is currently loading the next page.
  /// This is used to show [NiceBaseListBody.pageLoadingIndicator]
  bool get loadingPage;
  @override
  @JsonKey(ignore: true)
  _$$NiceBaseListStateImplCopyWith<D, _$NiceBaseListStateImpl<D>>
      get copyWith => throw _privateConstructorUsedError;
}

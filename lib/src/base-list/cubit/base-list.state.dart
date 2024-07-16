import "dart:math" as math;

import "package:freezed_annotation/freezed_annotation.dart";
import "package:nice_flutter_kit/nice_flutter_kit.dart";

part "base-list.state.freezed.dart";
part "base-list.state.g.dart";

@freezed
class NiceBaseListState<D> with _$NiceBaseListState<D> implements NiceBaseState {
  const factory NiceBaseListState({
    @Default(false) bool loading,
    @Default(false) bool error,

    /// Whether the initial load has been completed.
    @Default(false) bool initialLoadCompleted,

    /// Index of the next page.
    /// If this value is null, it means that there are no next page.
    int? nextPage,

    /// Current size of the pages.
    @Default(20) int pageSize,

    /// Total item count.
    @Default(0) int total,

    /// Search query that will be used to filter items, via the [NiceBaseListDataFilterProvider].
    String? searchQuery,

    /// Query that will be used to filter items, via the [NiceBaseListDataFilterProvider].
    @JsonKey(includeFromJson: false, includeToJson: false) NiceFilterQueryModel? query,

    /// Order that will be used to sort items, via the [NiceBaseListDataFilterProvider].
    @Default([]) @JsonKey(includeFromJson: false, includeToJson: false) List<NiceFilterOrderModel>? order,

    /// Items that have been filtered by the data filter, and are being displayed.
    @Default([]) @JsonKey(includeFromJson: false, includeToJson: false) List<D> values,

    /// Whether the base list is currently loading the next page.
    /// This is used to show [NiceBaseListBody.pageLoadingIndicator]
    @Default(false) bool loadingPage,
  }) = _NiceBaseListState<D>;

  const NiceBaseListState._();

  factory NiceBaseListState.fromJson(Map<String, dynamic> json) => _$NiceBaseListStateFromJson(json);

  /// Current page index (the last page that was loaded) of the base list.
  ///
  /// If [nextPage] is not null, the current page is [nextPage] - 1, with a minimum of 0.
  /// Otherwise, since we are at the list page, the current page is [pageCount] - 1.
  int get currentPage {
    // If we are not at the last page, the nextPage will not be null
    if (nextPage != null) {
      return math.max(nextPage! - 1, 0);
    }

    // If we are a the last page, return the total number of pages
    return pageCount - 1;
  }

  /// Total page count.
  /// This value may become inaccurate in a lazy loaded base list if the [pageSize] changes after the first page has
  /// loaded.
  int get pageCount => (total / pageSize).ceil();

  NiceFilterSearchModel? get _filterSearch {
    if (searchQuery == null || searchQuery!.isEmpty) {
      return null;
    }

    return NiceFilterSearchModel(value: searchQuery!);
  }

  NiceFilterModel getFilterForPage(int page) => NiceFilterModel(
        page: NiceFilterPageModel(
          number: page,
          size: pageSize,
        ),
        order: order,
        search: _filterSearch,
        query: query,
      );
}

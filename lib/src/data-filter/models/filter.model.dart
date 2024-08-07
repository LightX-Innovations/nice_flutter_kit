import "package:nice_flutter_kit/nice_flutter_kit.dart";

class NiceFilterModel {
  final List<NiceFilterOrderModel>? order;
  final NiceFilterPageModel page;
  final NiceFilterQueryModel? query;
  final NiceFilterSearchModel? search;
  final bool? needSubscription;

  const NiceFilterModel({
    this.order,
    required this.page,
    this.query,
    this.search,
    this.needSubscription,
  });

  Json toJson() => {
        if (order != null)
          "order":
              order!.map((order) => order.toJson()).toList(growable: false),
        "page": page.toJson(),
        if (query != null) "query": query!.toJson(),
        if (search != null) "search": search!.toJson(),
        if (needSubscription != null) "needSubscription": needSubscription,
      };
}

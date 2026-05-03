import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import '../../../../core/entities/meta_entity.dart';
import '../../../cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../../cached_docs/domain/entities/cached_doc_entity.dart';
import '../../domain/entities/orders_res_entity.dart';
import '../../domain/repo/orders_repo.dart';
import '../datasources/orders_api.dart';
import '../mappers/orders_res_mapper.dart';

@Singleton(as: OrdersRepo)
class OrdersRepoImpl implements OrdersRepo {
  final OrdersApi _api;
  final AppDatabase _db;
  OrdersRepoImpl(this._api, this._db);
  final List<OrderEntity> _accumulatedOrders = [];
  int _currentPage = 1;
  bool _hasMore = true;
  final _remoteController = BehaviorSubject<OrdersResEntity>();
  @override
  Stream<OrdersResEntity> watchOrders({
    required int subCategoryId,
    FileUploadStatus? filter,
  }) async* {
    _resetPagination();
    final stream = Rx.combineLatest2(
      _remoteController.stream,
      _db.watchAllCachedDocs().startWith(<CachedDocEntry>[]),
      (OrdersResEntity remote, List<CachedDocEntry> local) {
        final merged = _mergeRemoteWithLocal(remote, local);
        return _applyFilter(merged, filter);
      },
    );
    unawaited(_loadPage(subCategoryId));
    yield* stream;
  }

  @override
  Future<void> loadMore({
    required int subCategoryId,
    FileUploadStatus? filter,
  }) async {
    if (!_hasMore) return;
    await _loadPage(subCategoryId);
  }

  void _resetPagination() {
    _currentPage = 1;
    _accumulatedOrders.clear();
    _hasMore = true;
  }

  Future<void> _loadPage(int subCategoryId) async {
    try {
      final res = await _api.getOrders(
        subCategoryId: subCategoryId,
        page: _currentPage,
      );
      final entity = res.toEntity();
      entity.when(
        orders: (orders, meta) {
          _accumulatedOrders.addAll(orders);
          _hasMore = meta.hasNextPage ?? false;
          _currentPage++;
          _remoteController.add(
            OrdersResEntity.orders(
              orders: List.unmodifiable(_accumulatedOrders),
              meta: meta,
            ),
          );
        },
        individualDocs: (docs) {
          _remoteController.add(entity);
        },
      );
    } catch (e) {
      _remoteController.add(
        OrdersResEntity.orders(
          orders: List.unmodifiable(_accumulatedOrders),
          meta: const MetaEntity(),
        ),
      );
    }
  }

  OrdersResEntity _mergeRemoteWithLocal(
    OrdersResEntity ordersRes,
    List<CachedDocEntry> localDocs,
  ) {
    return ordersRes.when(
      orders: (orders, meta) {
        final mergedOrders = orders.map((order) {
          final mergedDocs = order.docs.map((remoteDoc) {
            final matchingLocal = localDocs.cast<CachedDocEntry?>().firstWhere(
              (local) => local?.docId.toString() == remoteDoc.id.toString(),
              orElse: () => null,
            );
            if (matchingLocal == null) return remoteDoc;
            return remoteDoc.copyWith(
              cachedDoc: CachedDocEntity.fromDb(matchingLocal),
            );
          }).toList();
          return order.copyWith(docs: mergedDocs);
        }).toList();
        return OrdersResEntity.orders(orders: mergedOrders, meta: meta);
      },
      individualDocs: (docs) {
        return ordersRes;
      },
    );
  }

  OrdersResEntity _applyFilter(
    OrdersResEntity ordersRes,
    FileUploadStatus? filter,
  ) {
    if (filter == null) return ordersRes;
    return ordersRes.when(
      orders: (orders, meta) {
        final filtered = orders.where((order) {
          return order.matchesStatus(fileUploadStatus: filter);
        }).toList();

        return OrdersResEntity.orders(orders: filtered, meta: meta);
      },
      individualDocs: (docs) {
        return ordersRes;
      },
    );
  }
}

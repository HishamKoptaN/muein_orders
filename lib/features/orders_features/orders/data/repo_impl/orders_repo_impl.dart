import 'package:injectable/injectable.dart';
import '../../domain/repo/orders_repo.dart';

@Singleton(as: OrdersRepo)
class OrdersRepoImpl implements OrdersRepo {}

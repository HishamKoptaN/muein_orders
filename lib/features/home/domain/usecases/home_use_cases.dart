import 'package:injectable/injectable.dart';

import '../../../../core/networking/api_result.dart';
import '../entities/order_type_res_entity.dart';
import '../repo/home_repo.dart';

@injectable
class HomeUseCases {
  final HomeRepo homeRepo;
  HomeUseCases(
    this.homeRepo,
  );
  Future<ApiResult<List<OrderTypeResEntity>?>> getSummary() async {
    return await homeRepo.getSummary();
  }
}

import 'package:injectable/injectable.dart';
import '../models/home_summary_model.dart';

@lazySingleton
class HomeRemoteDataSource {
  HomeRemoteDataSource();

  // TODO: Replace with real API call
  Future<HomeSummaryModel> fetchHomeSummary() async {
    // Placeholder mock response
    await Future<void>.delayed(const Duration(milliseconds: 200));
    return const HomeSummaryModel(
      totalOrders: 0,
      pendingOrders: 0,
      deliveredOrders: 0,
      revenue: 0,
    );
  }
}

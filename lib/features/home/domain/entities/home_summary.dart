import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_summary.freezed.dart';

@freezed
class HomeSummary with _$HomeSummary {
  const factory HomeSummary({
    required int totalOrders,
    required int pendingOrders,
    required int deliveredOrders,
    double? revenue,
  }) = _HomeSummary;
}

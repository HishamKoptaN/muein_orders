import '../../domain/entities/home_summary.dart';

class HomeSummaryModel {
  final int totalOrders;
  final int pendingOrders;
  final int deliveredOrders;
  final double? revenue;

  const HomeSummaryModel({
    required this.totalOrders,
    required this.pendingOrders,
    required this.deliveredOrders,
    this.revenue,
  });

  factory HomeSummaryModel.fromJson(Map<String, dynamic> json) {
    return HomeSummaryModel(
      totalOrders: (json['totalOrders'] ?? 0) as int,
      pendingOrders: (json['pendingOrders'] ?? 0) as int,
      deliveredOrders: (json['deliveredOrders'] ?? 0) as int,
      revenue: (json['revenue'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
        'totalOrders': totalOrders,
        'pendingOrders': pendingOrders,
        'deliveredOrders': deliveredOrders,
        'revenue': revenue,
      };

  HomeSummary toEntity() => HomeSummary(
        totalOrders: totalOrders,
        pendingOrders: pendingOrders,
        deliveredOrders: deliveredOrders,
        revenue: revenue,
      );
}

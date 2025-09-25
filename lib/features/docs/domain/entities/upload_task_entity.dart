class UploadTaskEntity {
  final int docId;
  final int orderId;
  final String? imageOne;
  final String? imageTwo;
  final String? videoOne;
  final String? videoTwo;
  final double? latitude;
  final double? longitude;
  final double? shippingCost;

  const UploadTaskEntity({
    required this.docId,
    required this.orderId,
    this.imageOne,
    this.imageTwo,
    this.videoOne,
    this.videoTwo,
    this.latitude,
    this.longitude,
    this.shippingCost,
  });
}

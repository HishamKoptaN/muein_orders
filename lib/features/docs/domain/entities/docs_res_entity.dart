import '../../../../core/entities/meta_entity.dart';

class DocsResEntity {
  final List<DocEntity>? docs;
  final MetaEntity? meta;

  DocsResEntity({this.docs, this.meta});
}
class DocEntity {
  final int? id;
  final String? orderNumber;
  final String? place;
  final String? video;
  final String? thumbnailUrl;
  final String? imageOne;
  final String? imageTwo;
  final String? updatedAt;
  final String? latitude;
  final String? longitude;
  final int? branchId;
  final String? createdAt;

  DocEntity({
    this.id,
    this.orderNumber,
    this.place,
    this.video,
    this.thumbnailUrl,
    this.imageOne,
    this.imageTwo,
    this.updatedAt,
    this.latitude,
    this.longitude,
    this.branchId,
    this.createdAt,
  });
}

import '../entities/meta_entity.dart';
import '../models/meta.dart';

extension MetaMapper on Meta {
  MetaEntity toEntity() {
    return MetaEntity(
      postId: postId ?? 0,
      currentPage: currentPage ?? 1,
      totalPages: totalPages ?? 1,
      totalComments: totalComments ?? 0,
      perPage: perPage ?? 10,
      hasNextPage: hasNextPage ?? false,
      hasPreviousPage: hasPreviousPage ?? false,
    );
  }
}

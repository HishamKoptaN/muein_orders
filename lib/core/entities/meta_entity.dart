class MetaEntity {
  final int? postId;
  final int? currentPage;
  final int? totalPages;
  final int? totalComments;
  final int? perPage;
  final bool? hasNextPage;
  final bool? hasPreviousPage;

  const MetaEntity({
    this.postId,
    this.currentPage,
    this.totalPages,
    this.totalComments,
    this.perPage,
    this.hasNextPage,
    this.hasPreviousPage,
  });
}

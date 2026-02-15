class PresignedUrlEntity {
  final String? uploadUrl;
  final String? filePath;
  final String? contentType;

  PresignedUrlEntity({this.uploadUrl, this.filePath, this.contentType});

  PresignedUrlEntity copyWith({
    String? uploadUrl,
    String? filePath,
    String? contentType,
  }) => PresignedUrlEntity(
    uploadUrl: uploadUrl ?? this.uploadUrl,
    filePath: filePath ?? this.filePath,
    contentType: contentType ?? this.contentType,
  );
}

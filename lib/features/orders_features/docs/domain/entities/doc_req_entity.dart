import '../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';

class DocReqEntity {
  final int docId;
  final List<DocFile> files;
  final LocationDoc? location;
  DocReqEntity({required this.docId, required this.files, this.location});
}

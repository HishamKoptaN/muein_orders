import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/add_doc_req_entity.dart';
part 'docs_event.freezed.dart';

@freezed
class DocsEvent with _$DocsEvent {
  const factory DocsEvent.getDocs({required int orderId}) = _GetDocs;
  const factory DocsEvent.updateData({
    required AddDocReqEntity addDocReqEntity,
  }) = _UpdateData;
  const factory DocsEvent.createDoc() = _CreateDoc;
}
enum FileType {
  image,
  video,
}

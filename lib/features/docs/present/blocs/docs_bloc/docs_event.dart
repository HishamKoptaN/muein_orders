part of 'docs_bloc.dart';

@freezed
class DocsEvent with _$DocsEvent {
  const factory DocsEvent.getDocs({
    required int orderId,
  }) = _GetDocs;
}

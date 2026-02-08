part of 'docs_bloc.dart';

@freezed
abstract class DocsEvent with _$DocsEvent {
  const factory DocsEvent.getDocs({required int orderId}) = _GetDocs;
}

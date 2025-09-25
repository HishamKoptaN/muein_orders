// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
part of 'docs_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DocsEvent _$DocsEventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _DocsEvent.fromJson(json);
    case 'getDocs':
      return _GetDocs.fromJson(json);
    case 'startUpload':
      return _StartUpload.fromJson(json);
    case 'retryUpload':
      return _RetryUpload.fromJson(json);
    case 'startBackgroundMonitoring':
      return _StartBackgroundMonitoring.fromJson(json);
    case 'stopBackgroundMonitoring':
      return _StopBackgroundMonitoring.fromJson(json);
    case 'checkPendingUploads':
      return _CheckPendingUploads.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'DocsEvent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

Map<String, dynamic> _$DocsEventToJson(DocsEvent instance) =>
    <String, dynamic>{
      'runtimeType': instance.runtimeType.toString(),
      ...instance.when(
        getDocs: (orderId) => _GetDocs(orderId: orderId).toJson(),
        startUpload: (orderId) => _StartUpload(orderId: orderId).toJson(),
        retryUpload: (docId) => _RetryUpload(docId: docId).toJson(),
        startBackgroundMonitoring: () => _StartBackgroundMonitoring().toJson(),
        stopBackgroundMonitoring: () => _StopBackgroundMonitoring().toJson(),
        checkPendingUploads: () => _CheckPendingUploads().toJson(),
      ),
    };

class _DocsEvent extends DocsEvent {
  const _DocsEvent() : super._();

  factory _DocsEvent.fromJson(Map<String, dynamic> json) =>
      _$DocsEventFromJson(json);

  Map<String, dynamic> toJson() => _$DocsEventToJson(this);
}

class _GetDocs extends DocsEvent {
  const _GetDocs({required this.orderId}) : super._();

  factory _GetDocs.fromJson(Map<String, dynamic> json) => _GetDocs(
        orderId: json['orderId'] as int,
      );

  @override
  final int orderId;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'orderId': orderId,
      };
}

class _StartUpload extends DocsEvent {
  const _StartUpload({required this.orderId}) : super._();

  factory _StartUpload.fromJson(Map<String, dynamic> json) => _StartUpload(
        orderId: json['orderId'] as int,
      );

  @override
  final int orderId;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'orderId': orderId,
      };
}

class _RetryUpload extends DocsEvent {
  const _RetryUpload({required this.docId}) : super._();

  factory _RetryUpload.fromJson(Map<String, dynamic> json) => _RetryUpload(
        docId: json['docId'] as int,
      );

  @override
  final int docId;

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{
        'docId': docId,
      };
}

class _StartBackgroundMonitoring extends DocsEvent {
  const _StartBackgroundMonitoring() : super._();

  factory _StartBackgroundMonitoring.fromJson(Map<String, dynamic> json) =>
      const _StartBackgroundMonitoring();

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{};
}

class _StopBackgroundMonitoring extends DocsEvent {
  const _StopBackgroundMonitoring() : super._();

  factory _StopBackgroundMonitoring.fromJson(Map<String, dynamic> json) =>
      const _StopBackgroundMonitoring();

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{};
}

class _CheckPendingUploads extends DocsEvent {
  const _CheckPendingUploads() : super._();

  factory _CheckPendingUploads.fromJson(Map<String, dynamic> json) =>
      const _CheckPendingUploads();

  @override
  Map<String, dynamic> toJson() => <String, dynamic>{};
}

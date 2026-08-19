import 'dart:async';

import 'package:equatable/equatable.dart';

import '../../features/orders_features/cached_docs/data/datasources/local/drift/cached_docs_table.dart';

/// Event fired when upload status changes for any document
class UploadStatusChangedEvent extends Equatable {
  final int docId;
  final FileUploadStatus oldStatus;
  final FileUploadStatus newStatus;
  final DateTime timestamp;

  const UploadStatusChangedEvent({
    required this.docId,
    required this.oldStatus,
    required this.newStatus,
    required this.timestamp,
  });

  @override
  List<Object?> get props => [docId, oldStatus, newStatus, timestamp];
}

class UploadEventBus {
  static final _instance = UploadEventBus._internal();
  factory UploadEventBus() => _instance;
  UploadEventBus._internal();

  final StreamController<UploadStatusChangedEvent> _controller =
      StreamController<UploadStatusChangedEvent>.broadcast();

  Stream<UploadStatusChangedEvent> get events => _controller.stream;

  void fireStatusChanged({
    required int docId,
    required FileUploadStatus oldStatus,
    required FileUploadStatus newStatus,
  }) {
    _controller.add(
      UploadStatusChangedEvent(
        docId: docId,
        oldStatus: oldStatus,
        newStatus: newStatus,
        timestamp: DateTime.now(),
      ),
    );
  }

  void dispose() {
    _controller.close();
  }
}

import 'dart:async';
import 'package:dio/dio.dart';

class SlowUploadInterceptor extends Interceptor {
  final int bytesPerSecond;
  final int chunkSize;

  SlowUploadInterceptor({
    this.bytesPerSecond = 1024,
    this.chunkSize = 1024,
  });

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (_isUploadRequest(options)) {
      if (options.data is FormData) {
        final formData = options.data as FormData;
        final newFormData = FormData();
        formData.fields.forEach(newFormData.fields.add);
        for (final entry in formData.files) {
          final file = entry.value;
          final stream = file.finalize();
          final slowStream = _limitStream(stream, bytesPerSecond, chunkSize);
          final slowFile = MultipartFile.fromStream(
            slowStream as Stream<List<int>> Function(),
            file.length,
            filename: file.filename,
            contentType: file.contentType,
          );
          newFormData.files.add(MapEntry(entry.key, slowFile));
        }
        options.data = newFormData;
      }
    }
    handler.next(options);
  }

  Stream<List<int>> _limitStream(
    Stream<List<int>> stream,
    int bytesPerSecond,
    int chunkSize,
  ) async* {
    final delay =
        Duration(milliseconds: (chunkSize / bytesPerSecond * 1000).round());

    await for (final chunk in stream) {
      yield chunk;
      await Future.delayed(delay);
    }
  }

  bool _isUploadRequest(RequestOptions options) {
    return options.method.toUpperCase() == 'POST' &&
        (options.data is FormData ||
            options.data.toString().contains('FormData'));
  }
}

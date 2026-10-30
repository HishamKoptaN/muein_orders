import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/use_cases/s3_use_cases.dart';
import 's3_event.dart';
import 's3_state.dart';

@lazySingleton
class S3Bloc extends Bloc<S3Event, S3State> {
  final S3UseCases _s3UseCases;

  S3Bloc(this._s3UseCases) : super(const S3State.initial()) {
    on<S3Event>((event, emit) async {
      await event.when(
        uploadFile: (file, uploadUrl, contentType) async {
          emit(const S3State.loading());
          final result = await _s3UseCases.uploadFile(
            file: file,
            uploadUrl: uploadUrl,
            contentType: contentType,
          );
          result.when(
            success: (_) {
              emit(const S3State.success());
            },
            failure: (errorInfo) {
              emit(S3State.failure(message: errorInfo.message ?? 'Upload failed'));
            },
          );
        },
      );
    });
  }
}

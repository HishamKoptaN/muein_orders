import 'dart:io';

import 'package:flutter/material.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';

import '../../../../../core/di/dependency_injection.dart';
import '../../../domain/entities/create_cached_doc_entity.dart';
import '../../bloc/cached_doc_bloc.dart';

class DebugHandler {
  static void logSaveButtonPress(Loaded state) {
    debugPrint('=== DEBUG: Save Button Pressed ===');
    debugPrint('FormzSubmissionStatus: ${state.formzSubmissionStatus}');
    debugPrint('IsSuccess: ${state.formzSubmissionStatus.isSuccess}');
    for (int i = 0; i < state.createCachedDoc.files.length; i++) {
      final file = state.createCachedDoc.files[i];
      debugPrint(
        'File $i: path=${file.docFile?.path}, status=${file.docFileStatus}, isValid=${file.file?.isValid}',
      );
      if (file.file?.isNotValid == true) {
        debugPrint('File $i error: ${file.file?.errorMessage}');
      }
    }
    if (state.formzSubmissionStatus.isSuccess) {
      debugPrint('Form is valid, proceeding with save...');
    } else {
      debugPrint('Form validation failed!');
    }
  }

  static void logInitData(int docId, dynamic cachedDoc) {
    debugPrint('=== DEBUG: AddCachedDocView initState ===');
    debugPrint('docId: $docId');
    debugPrint('cachedDoc: $cachedDoc');
  }

  static void initializeBloc(int docId) {
    debugPrint('Fetching cached doc from database');
    getIt<CachedDocBloc>().add(CachedDocEvent.initialize(docId: docId));
  }

  static void updateBlocWithExistingData(int docId, dynamic cachedDoc) {
    debugPrint('Using existing cached doc data');
    getIt<CachedDocBloc>().add(
      CachedDocEvent.updateData(
        createCachedDoc: cachedDoc.toCreateCachedDocEntity().copyWith(
          docId: GenericFormzInput.dirty(docId),
          files:
              cachedDoc.files
                  ?.map(
                    (file) => DocFileEntity(
                      file: file.path != null
                          ? FileFormzInput.dirty(File(file.path!))
                          : null,
                      docFile: file,
                      docFileStatus: file.status,
                    ),
                  )
                  .toList() ??
              [],
        ),
        subCategoryId: 1,
      ),
    );
  }
}

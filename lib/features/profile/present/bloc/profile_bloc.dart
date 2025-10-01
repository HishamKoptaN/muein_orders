import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/error/api_error_model.dart';
import '../../domain/entities/profile_res_entity.dart';
import '../../domain/entities/update_profile_req_entity.dart';
import '../../domain/use_cases/use_cases.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileUseCases _profileUseCases;
  ProfileResEntity? _profile;
  GenericFormzInput<File>? _image;
  GenericFormzInput<String>? _name;
  PhoneNumberInput? _phone;
  bool _isEditingProfile = false;
  FormzSubmissionStatus? _formzSubmissionStatus;
  ProfileBloc(this._profileUseCases)
      : super(
          const ProfileState.loading(),
        ) {
    on<ProfileEvent>(
      (event, emit) async {
        await event.when(
          getProfile: () async {
            emit(const ProfileState.loading());
            final res = await _profileUseCases.getProfile();
            res.when(
              success: (
                res,
              ) {
                _profile = res;
                emitCustomLoaded(
                  emit: emit,
                );
              },
              failure: (error) {
                emit(
                  ProfileState.failure(
                    error: error.message ?? 'حدث خطأ غير متوقع',
                  ),
                );
              },
            );
          },
          startEditing: () async {
            _isEditingProfile = true;
            emitCustomLoaded(
              emit: emit,
            );
          },
          cancelEditing: () async {
            _isEditingProfile = false;
            clearData();
            emit(
              ProfileState.loaded(
                profile: _profile!,
                isEditingProfile: _isEditingProfile,
                formzSubmissionStatus: FormzSubmissionStatus.initial,
              ),
            );
          },
          dataChanged: (
            image,
            name,
            phone,
          ) {
            if (image?.isValid == true) {
              _image = image ?? _image;
              _profile = _profile?.copyWith(
                selectedImage: image!.value,
              );
            }
            _name = name ?? _name;
            _phone = phone ?? _phone;
            emitCustomLoaded(
              emit: emit,
            );
          },
          updateProfile: () async {
            emitCustomLoaded(
              emit: emit,
              formzSubmissionStatus: FormzSubmissionStatus.inProgress,
            );
            final result = await _profileUseCases.updateProfile(
              updateProfileReqEntity: UpdateProfileReqEntity(
                image: _image?.value,
                name: _name?.value,
                phone: _phone?.value,
              ),
            );
            result.when(
              success: (
                profile,
              ) {
                _profile = profile;
                emit(
                  const ProfileState.success(),
                );
                _isEditingProfile = false;
                emitCustomLoaded(
                  emit: emit,
                );
              },
              failure: (
                error,
              ) {
                emit(
                  ProfileState.failure(
                    error: error.message ?? 'حدث خطأ غير متوقع',
                  ),
                );
                emitCustomLoaded(
                  emit: emit,
                );
              },
            );
          },
        );
      },
    );
  }
  void emitCustomLoaded({
    required Emitter<ProfileState> emit,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      ProfileState.loaded(
        profile: _isEditingProfile
            ? _profile!.copyWith(
                name: _name?.value ?? _profile!.name,
                phone: _phone?.value ?? _profile!.phone,
              )
            : _profile!,
        isEditingProfile: _isEditingProfile,
        formzSubmissionStatus: formzSubmissionStatus ??
            ((_name?.isValid == true && _phone?.isValid == true)
                ? FormzSubmissionStatus.success
                : FormzSubmissionStatus.failure),
      ),
    );
  }

  void emitCustomFailure({
    required Emitter<ProfileState> emit,
    required ApiErrorModel apiErrorModel,
  }) {
    return emit(
      ProfileState.failure(
        error: apiErrorModel.error ?? '',
      ),
    );
  }

  void clearData() {
    _image = null;
    _name = null;
    _phone = null;
  }
}

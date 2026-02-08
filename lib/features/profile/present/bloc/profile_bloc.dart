import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/entities/profile_res_entity.dart';
import '../../domain/entities/update_profile_req_entity.dart';
import '../../domain/use_cases/use_cases.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@singleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileUseCases _profileUseCases;

  ProfileBloc(this._profileUseCases) : super(const ProfileState.loading()) {
    on<ProfileEvent>((event, emit) async {
      await event.when(
        getProfile: () async {
          emit(const ProfileState.loading());
          final res = await _profileUseCases.getProfile();
          await res.when(
            success: (res) {
              emit(
                ProfileState.loaded(
                  profile: res ?? ProfileResEntity(),
                  updateProfileReq: null,
                  isEditing: false,
                  formzSubmissionStatus: FormzSubmissionStatus.initial,
                ),
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
        startEdit: () async {
          await state.mapOrNull(
            loaded: (state) {
              emitCustomLoaded(
                emit: emit,
                state: state,
                isEditing: true,
                updateProfileReq: UpdateProfileReqEntity(
                  name: state.profile.name != null
                      ? GenericFormzInput<String>.dirty(state.profile.name)
                      : null,
                  phone: state.profile.phone != null
                      ? PhoneNumberInput.dirty(state.profile.phone ?? '')
                      : null,
                ),
              );
            },
          );
        },
        dataChanged: (updateProfileReq) async {
          await state.mapOrNull(
            loaded: (state) {
              emitCustomLoaded(
                emit: emit,
                state: state,
                updateProfileReq: updateProfileReq,
              );
            },
          );
        },
        updateProfile: () async {
          await state.mapOrNull(
            loaded: (state) async {
              emitCustomLoaded(
                emit: emit,
                state: state,
                formzSubmissionStatus: FormzSubmissionStatus.inProgress,
              );
              final result = await _profileUseCases.updateProfile(
                updateProfileReqEntity:
                    state.updateProfileReq ?? const UpdateProfileReqEntity(),
              );
              await result.when(
                success: (profile) {
                  emit(const ProfileState.success());
                  emitCustomLoaded(
                    emit: emit,
                    state: state,
                    profile:
                        profile?.copyWith(
                          name: profile.name,
                          phone: profile.phone,
                        ) ??
                        state.profile,
                    isEditing: false,
                    updateProfileReq: null,
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
          );
        },
        cancelEdit: () async {
          await state.mapOrNull(
            loaded: (state) {
              emitCustomLoaded(emit: emit, state: state, isEditing: false);
            },
          );
        },
      );
    });
  }
  void emitCustomLoaded({
    required Emitter<ProfileState> emit,
    required _Loaded state,
    ProfileResEntity? profile,
    bool? isEditing,
    UpdateProfileReqEntity? updateProfileReq,

    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      ProfileState.loaded(
        profile: profile ?? state.profile,
        updateProfileReq: updateProfileReq ?? state.updateProfileReq,
        isEditing: isEditing ?? state.isEditing,
        formzSubmissionStatus:
            formzSubmissionStatus ??
            formzSubmissionStatus ??
            (Formz.validate([
                  state.updateProfileReq?.name ??
                      const GenericFormzInput<String>.pure(),
                ])
                ? FormzSubmissionStatus.success
                : FormzSubmissionStatus.failure),
      ),
    );
  }

  void emitCustomFailure({
    required Emitter<ProfileState> emit,
    required ApiErrorModel apiErrorModel,
  }) {
    return emit(ProfileState.failure(error: apiErrorModel.error ?? ''));
  }
}

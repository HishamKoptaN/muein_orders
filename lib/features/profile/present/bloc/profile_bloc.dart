import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/api_error_model.dart';
import '../../../../core/networking/api_result.dart';
import '../../domain/entities/profile_res_entity.dart';
import '../../domain/entities/update_profile_req_entity.dart';
import '../../domain/use_cases/profile_use_cases.dart';

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
        dataChanged: (state) async {
          emitCustomLoaded(emit: emit, state: state);
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
                    state: state.copyWith(
                      profile:
                          profile?.copyWith(
                            avatar: profile.avatar ?? state.profile.avatar,
                            name: profile.name ?? state.profile.name,
                            phone: profile.phone ?? state.profile.phone,
                          ) ??
                          state.profile,
                      updateProfileReq: null,
                    ),
                  );
                },
                failure: (error) {
                  emit(
                    ProfileState.failure(
                      error: error.message ?? 'حدث خطأ غير متوقع',
                    ),
                  );
                  emitCustomLoaded(emit: emit, state: state);
                },
              );
            },
          );
        },
      );
    });
  }
  void emitCustomLoaded({
    required Emitter<ProfileState> emit,
    required _Loaded? state,
    ProfileResEntity? profile,
    UpdateProfileReqEntity? updateProfileReq,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    emit(
      state ??
          ProfileState.loaded(
            profile: profile ?? state?.profile ?? ProfileResEntity(),
            updateProfileReq: updateProfileReq ?? state?.updateProfileReq,
            formzSubmissionStatus:
                formzSubmissionStatus ??
                formzSubmissionStatus ??
                (Formz.validate([
                      state?.updateProfileReq?.name ??
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

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/profile_entity.dart';
import '../../domain/entities/update_profile_req_entity.dart';
import '../../domain/use_cases/use_cases.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileUseCases _profileUseCases;

  ProfileBloc(this._profileUseCases)
      : super(
          const ProfileState.loading(),
        ) {
    on<ProfileEvent>(
      (event, emit) async {
        await event.when(
          getProfile: () async {
            emit(const ProfileState.loading());
            final result = await _profileUseCases.getProfile();
            result.when(
              success: (profile) =>
                  emit(ProfileState.loaded(profile: profile!)),
              failure: (error) => emit(
                ProfileState.error(
                    message: error.message ?? 'حدث خطأ غير متوقع'),
              ),
            );
          },
          updateProfile: () async {
            emit(const ProfileState.loading());
            final result = await _profileUseCases.updateProfile(
              updateProfileReqEntity: const UpdateProfileReqEntity(),
            );
            result.when(
              success: (profile) =>
                  emit(ProfileState.loaded(profile: profile!)),
              failure: (error) => emit(
                ProfileState.error(
                    message: error.message ?? 'حدث خطأ غير متوقع'),
              ),
            );
          },
        );
      },
    );
  }
}

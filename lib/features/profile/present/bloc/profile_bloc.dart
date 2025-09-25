import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/profile_entity.dart';
import '../../domain/use_cases/get_profile_use_case.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfileUseCase _getProfileUseCase;

  ProfileBloc(this._getProfileUseCase) : super(const ProfileState.initial()) {
    on<ProfileEvent>((event, emit) async {
      await event.when(
        getProfile: () => _onGetProfile(emit),
      );
    });
  }

  Future<void> _onGetProfile(Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());

    final result = await _getProfileUseCase.call();

    result.when(
      success: (profile) => emit(ProfileState.loaded(profile: profile!)),
      failure: (error) => emit(ProfileState.error(message: error.message ?? 'حدث خطأ غير متوقع')),
    );
  }
}

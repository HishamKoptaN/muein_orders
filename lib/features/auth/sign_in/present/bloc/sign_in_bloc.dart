import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/networking/api_result.dart';
import '../../../auth/present/bloc/auth_bloc.dart';
import '../../domain/entities/sign_in_req_entity.dart';
import '../../domain/use_cases/sign_in_use_cases.dart';
part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@lazySingleton
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final SignInUseCases signInUseCases;
  final AuthBloc authBloc;
  SignInBloc({required this.signInUseCases, required this.authBloc})
    : super(const .loaded(signInReq: SignInReqEntity())) {
    on<SignInEvent>((event, emit) async {
      await event.map(
        dataChanged: (e) async {
          await state.maybeMap(
            loaded: (loaded) {
              _emitCustomLoaded(
                emit: emit,
                signInReq: e.signInReq,
                loaded: loaded,
              );
            },
            orElse: () {},
          );
        },
        signIn: (e) async {
          await state.mapOrNull(
            loaded: (loaded) async {
              _emitCustomLoaded(
                emit: emit,
                loaded: loaded,
                formzSubmissionStatus: .inProgress,
              );
              await signInUseCases
                  .signIn(
                    email: loaded.signInReq.email?.value ?? '',
                    password: loaded.signInReq.password?.value ?? '',
                  )
                  .then((result) async {
                    await result.when(
                      success: (data) async {
                        final completer = Completer();
                        authBloc.add(.authToken(onComplete: completer));
                        await completer.future;
                        emit(const .loaded(signInReq: SignInReqEntity()));
                      },
                      failure: (error) {
                        emit(.failure(errorMessage: error.message));
                        _emitCustomLoaded(emit: emit, loaded: loaded);
                      },
                    );
                  });
            },
          );
        },
      );
    });
  }

  void _emitCustomLoaded({
    required Emitter<SignInState> emit,
    required _Loaded? loaded,
    SignInReqEntity? signInReq,
    FormzSubmissionStatus? formzSubmissionStatus,
  }) {
    if (loaded != null) {
      emit(
        SignInState.loaded(
          signInReq: signInReq ?? loaded.signInReq,
          formzSubmissionStatus:
              formzSubmissionStatus ??
              (Formz.validate([
                    //   signInReq?.email ?? loaded.signInReq.email,
                    //   signInReq?.password ?? loaded.signInReq.password,
                  ])
                  ? .success
                  : .failure),
        ),
      );
    }
  }
}

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../../core/networking/api_result.dart';
import '../../domain/usecases/auth_use_casees.dart';
part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthUseCases authUseCases;
  AuthBloc({required this.authUseCases}) : super(const .loading()) {
    on<AuthEvent>((event, emit) async {
      await event.when(
        check: (completer) async {
          await authUseCases.check().then((res) async {
            await res.when(
              success: (_) {
                emit(const .authenticated());
              },
              failure: (e) {
                emit(const .unauthenticated());
              },
            );
          });
          completer?.complete();
        },
        authToken: (completer) async {
          await authUseCases.authToken().then((result) async {
            await result.when(
              success: (v) {
                emit(const AuthState.authenticated());
              },
              failure: (apiErrorModel) {
                emit(const AuthState.unauthenticated());
              },
            );
          });
          completer?.complete();
        },
        signedOut: () async {
          await authUseCases.signOut().then((result) {
            result.when(
              success: (data) {
                emit(const .unauthenticated());
              },
              failure: (error) {
                emit(.failure(error.message));
                emit(const .unauthenticated());
              },
            );
          });
        },
      );
    });
  }
}

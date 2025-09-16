import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart' show Injectable;

import '../../../../../core/error/api_error_model.dart';
import '../../domain/usecases/main_use_casees.dart';

part 'main_bloc.freezed.dart';
part 'main_event.dart';
part 'main_state.dart';

@Injectable()
class MainBloc extends Bloc<MainEvent, MainState> {
  final FirebaseAuth auth;
  MainUseCasess mainUseCasess;
  MainBloc({
    required this.auth,
    required this.mainUseCasess,
  }) : super(
          const MainState.initial(),
        ) {
    on<MainEvent>(
      (event, emit) async {
        await event.when(
          check: () async {
            emit(
              const MainState.loading(),
            );
            if (isUserLoggedIn()) {
              try {
                final res = await mainUseCasess.check();
                await res!.when(
                  success: (res) async {
                    emit(
                      const MainState.logedIn(),
                    );
                  },
                  failure: (apiErrorModel) async {
                    emit(
                      const MainState.logedOut(),
                    );
                  },
                );
              } catch (e) {
                emit(
                  const MainState.logedOut(),
                );
              }
            } else {
              emit(
                const MainState.logedOut(),
              );
            }
          },
          toggleRememberMe: () {},
        );
      },
    );
  }
  bool isUserLoggedIn() {
    final user = FirebaseAuth.instance.currentUser;
    return user != null;
  }
}

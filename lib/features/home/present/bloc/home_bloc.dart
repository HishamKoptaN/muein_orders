import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/api_error_model.dart';
import '../../domain/entities/order_type_res_entity.dart';
import '../../domain/usecases/home_use_cases.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeUseCases homeUseCases;

  HomeBloc({
    required this.homeUseCases,
  }) : super(
          const HomeState.loading(),
        ) {
    on<HomeEvent>(
      (event, emit) async {
        await event.when(
          getSummary: (getMore) async {
            emit(const HomeState.loading());
            final result = await homeUseCases.getSummary();
            result.when(
              success: (data) {
                if (data != null) {
                  emit(HomeState.loaded(orderTypeResEntity: data));
                } else {
                  emit(
                    const HomeState.failure(
                      apiErrorModel: ApiErrorModel(
                        message: 'No data available',
                        statusCode: 404,
                      ),
                    ),
                  );
                }
              },
              failure: (error) => emit(HomeState.failure(apiErrorModel: error)),
            );
          },
        );
      },
    );
  }
}

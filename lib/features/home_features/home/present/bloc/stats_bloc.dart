import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/api_error_model/api_error_model.dart';
import '../../../../../core/networking/api_result.dart';
import '../../domain/entities/order_type_res_entity.dart';
import '../../domain/usecases/stats_use_cases.dart';

part 'stats_bloc.freezed.dart';
part 'stats_event.dart';
part 'stats_state.dart';

@singleton
class StatsBloc extends Bloc<StatsEvent, StatsState> {
  final StatsUseCases statsUseCases;

  StatsBloc({required this.statsUseCases}) : super(const StatsState.loading()) {
    on<StatsEvent>((event, emit) async {
      await event.when(
        getStats: () async {
          emit(const StatsState.loading());
          await statsUseCases.stats().then((result) async {
            result.when(
              success: (stats) {
                emit(StatsState.loaded(stats: stats ?? []));
              },
              failure: (error) {
                emit(StatsState.failure(apiErrorModel: error));
              },
            );
          });
        },
      );
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:error_handler/error_handler.dart';
import 'package:error_handler/error_handler.dart';
import '../../../domain/entities/financial_account_entity.dart';
import '../../../domain/usecases/financial_use_cases.dart';
part 'financial_bloc.freezed.dart';
part 'financial_event.dart';
part 'financial_state.dart';

@singleton
class FinancialBloc extends Bloc<FinancialEvent, FinancialState> {
  final FinancialUseCases _reportsUseCases;
  FinancialBloc({required FinancialUseCases reportsUseCases})
    : _reportsUseCases = reportsUseCases,
      super(const FinancialState.initial()) {
    on<FinancialEvent>((event, emit) async {
      await event.when(
        get: () async {
          emit(const FinancialState.loading());
          final res = await _reportsUseCases.getFinancialAccounts();
          await res.when(
            success: (data) {
              emit(FinancialState.loaded(financialAccount: data));
            },
            failure: (apiErrorModel) {
              emit(FinancialState.failure(apiErrorModel: apiErrorModel));
            },
          );
        },
      );
    });
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';

class OrderFormCubit extends Cubit<bool> {
  OrderFormCubit() : super(false);

  void updateFormValidity(bool isValid) => emit(isValid);
}

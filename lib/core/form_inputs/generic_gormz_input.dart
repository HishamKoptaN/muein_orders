import 'package:formz/formz.dart';

enum GenericValidationError {
  empty,
  custom,
}

class GenericFormzInput<T> extends FormzInput<T?, GenericValidationError> {
  final String? Function(T?)? customValidator;

  const GenericFormzInput.pure({this.customValidator}) : super.pure(null);
  const GenericFormzInput.dirty(super.value, {this.customValidator})
      : super.dirty();

  @override
  GenericValidationError? validator(T? value) {
    // فحص القيمة الفارغة أولًا
    if (value == null || (value is String && value.trim().isEmpty)) {
      return GenericValidationError.empty;
    }

    // فحص الشرط المخصص إن وجد
    final customResult = customValidator?.call(value);
    if (customResult != null) {
      return GenericValidationError.custom;
    }
    return null;
  }

  String? get errorMessage {
    return switch (error) {
      GenericValidationError.empty => 'هذا الحقل مطلوب',
      GenericValidationError.custom => customValidator?.call(value),
      _ => null,
    };
  }
}

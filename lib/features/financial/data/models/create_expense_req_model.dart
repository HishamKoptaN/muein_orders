import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_expense_req_model.freezed.dart';
part 'create_expense_req_model.g.dart';

@freezed
abstract class CreateExpenseModel with _$CreateExpenseModel {
  const factory CreateExpenseModel({
    @JsonKey(name: 'amount') double? amount,
    @JsonKey(name: 'notes') String? notes,
  }) = _CreateExpenseModel;
  factory CreateExpenseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateExpenseModelFromJson(json);
}

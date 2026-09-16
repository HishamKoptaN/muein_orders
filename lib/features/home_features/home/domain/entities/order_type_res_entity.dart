import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_type_res_entity.freezed.dart';

@freezed
abstract class StatEntity with _$StatEntity {
  const factory StatEntity({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String image,
    @Default(0) int count,
  }) = _StatEntity;
}

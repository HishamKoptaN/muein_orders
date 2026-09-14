import 'package:freezed_annotation/freezed_annotation.dart';

part 'instruction_page_entity.freezed.dart';

@freezed
abstract class InstructionPageEntity with _$InstructionPageEntity {
  const factory InstructionPageEntity({
    required String title,
    required String description,
    required String imagePath,
  }) = _InstructionPageEntity;
}

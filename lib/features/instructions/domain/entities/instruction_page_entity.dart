import 'package:freezed_annotation/freezed_annotation.dart';

part 'instruction_page_entity.freezed.dart';

@freezed
abstract class InstructionPageEntity with _$InstructionPageEntity {
  const factory InstructionPageEntity({
    required String titleKey,
    required String descriptionKey,
    required String imagePath,
  }) = _InstructionPageEntity;
}

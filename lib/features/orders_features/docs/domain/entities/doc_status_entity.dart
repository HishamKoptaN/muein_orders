import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doc_status_entity.freezed.dart';

@freezed
abstract class DocStatusEntity with _$DocStatusEntity {
  const factory DocStatusEntity({
    @Default(0) int id,
    @Default('') String name,
    @Default(Colors.transparent) Color textColor,
    @Default(Colors.transparent) Color backgroundColor,
    @Default(Colors.transparent) Color iconColor,
    @Default('') String createdAt,
    @Default('') String updatedAt,
  }) = _DocStatusEntity;
}

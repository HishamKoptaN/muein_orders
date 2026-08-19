import 'package:flutter/material.dart';
import '../../../../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../../../../core/widgets/translated_text.dart';
import '../../../../domain/entities/order_items_res_entity.dart';

Widget reviewStatusSection({
  required BuildContext context,
  required DocEntity doc,
}) {
  return Column(
    mainAxisSize: .min,
    children: [
      TrText(
        doc.docStatus?.name ?? '',
        style: context.textTheme.bodyLarge?.copyWith(
          color: doc.docStatus?.textColor,
        ),
      ),
      Text(
        'حالة المراجعة',
        style: context.textTheme.bodyLarge?.copyWith(color: Colors.grey[600]),
      ),
    ],
  );
}

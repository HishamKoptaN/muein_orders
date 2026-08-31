import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/responsive/responsive_extensions.dart';
import 'core/theme/core/extensions/theme_ext.dart';

class Material3View extends StatelessWidget {
  const Material3View({super.key});
  static const String routeName = "material3";

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final colors = <String, Color>{
      // Primary
      'primary': colorScheme.primary,
      'onPrimary': colorScheme.onPrimary,
      'primaryContainer': colorScheme.primaryContainer,
      'onPrimaryContainer': colorScheme.onPrimaryContainer,

      // Secondary
      'secondary': colorScheme.secondary,
      'onSecondary': colorScheme.onSecondary,
      'secondaryContainer': colorScheme.secondaryContainer,
      'onSecondaryContainer': colorScheme.onSecondaryContainer,

      // Tertiary
      'tertiary': colorScheme.tertiary,
      'onTertiary': colorScheme.onTertiary,
      'tertiaryContainer': colorScheme.tertiaryContainer,
      'onTertiaryContainer': colorScheme.onTertiaryContainer,

      // Error
      'error': colorScheme.error,
      'onError': colorScheme.onError,
      'errorContainer': colorScheme.errorContainer,
      'onErrorContainer': colorScheme.onErrorContainer,

      // Surface
      'surface': colorScheme.surface,
      'onSurface': colorScheme.onSurface,
      'surfaceDim': colorScheme.surfaceDim,
      'surfaceBright': colorScheme.surfaceBright,
      'surfaceContainerLowest': colorScheme.surfaceContainerLowest,
      'surfaceContainerLow': colorScheme.surfaceContainerLow,
      'surfaceContainer': colorScheme.surfaceContainer,
      'surfaceContainerHigh': colorScheme.surfaceContainerHigh,
      'surfaceContainerHighest': colorScheme.surfaceContainerHighest,

      // Surface Variant
      'onSurfaceVariant': colorScheme.onSurfaceVariant,

      // Outline
      'outline': colorScheme.outline,
      'outlineVariant': colorScheme.outlineVariant,

      // Inverse
      'inverseSurface': colorScheme.inverseSurface,
      'onInverseSurface': colorScheme.onInverseSurface,
      'inversePrimary': colorScheme.inversePrimary,

      // Fixed
      'primaryFixed': colorScheme.primaryFixed,
      'primaryFixedDim': colorScheme.primaryFixedDim,
      'onPrimaryFixed': colorScheme.onPrimaryFixed,
      'onPrimaryFixedVariant': colorScheme.onPrimaryFixedVariant,

      'secondaryFixed': colorScheme.secondaryFixed,
      'secondaryFixedDim': colorScheme.secondaryFixedDim,
      'onSecondaryFixed': colorScheme.onSecondaryFixed,
      'onSecondaryFixedVariant': colorScheme.onSecondaryFixedVariant,

      'tertiaryFixed': colorScheme.tertiaryFixed,
      'tertiaryFixedDim': colorScheme.tertiaryFixedDim,
      'onTertiaryFixed': colorScheme.onTertiaryFixed,
      'onTertiaryFixedVariant': colorScheme.onTertiaryFixedVariant,
    };

    return Scaffold(
      body: GridView.builder(
        padding: const .all(2),
        itemCount: colors.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: context.responsive(mobile: 2, tablet: 3, desktop: 4),
          mainAxisSpacing: 1.h,
          crossAxisSpacing: 1.w,
          childAspectRatio: 3.r,
        ),
        itemBuilder: (context, index) {
          final entry = colors.entries.elementAt(index);
          return _ColorItem(name: entry.key, color: entry.value);
        },
      ),
    );
  }
}

class _ColorItem extends StatelessWidget {
  final String name;
  final Color color;

  const _ColorItem({required this.name, required this.color});

  @override
  Widget build(BuildContext context) {
    final textColor = color.computeLuminance() > 0.5
        ? Colors.black
        : Colors.white;
    final hex =
        '#${color.toARGB32().toRadixString(16).padLeft(8, '0').toUpperCase()}';
    return Container(
      padding: const .symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: .circular(8),
        border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              name,
              style: TextStyle(
                color: textColor,
                fontSize: 10.r,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text(
            hex,
            style: TextStyle(
              color: textColor,
              fontSize: 10.r,
              fontFamily: 'monospace',
            ),
          ),
        ],
      ),
    );
  }
}

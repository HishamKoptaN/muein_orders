import 'package:flutter/material.dart';

import 'tab_button_widget.dart';

/// ويدجت Tabs لعرض علامات التبويب في شاشة الإشعارات
class TabsWidget extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onChanged;

  const TabsWidget({
    super.key,
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: const Color(0xFFF7F7F7),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: TabButtonWidget(
              text: 'جديد',
              selected: selectedIndex == 0,
              onTap: () => onChanged(0),
            ),
          ),
          Expanded(
            child: TabButtonWidget(
              text: 'الكل',
              selected: selectedIndex == 1,
              onTap: () => onChanged(1),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../core/widgets/translated_text.dart';
import '../../../../../l10n/app_localizations.dart';

typedef TabSelectedCallback = void Function(int tabIndex);

class OrdersTabs extends StatefulWidget {
  const OrdersTabs({
    super.key,
    required this.onTap,
    required this.t,
    required this.selectedTab,
  });

  final TabSelectedCallback onTap;
  final AppLocalizations t;
  final int selectedTab;

  @override
  State<OrdersTabs> createState() => _OrdersTabsState();
}

class _OrdersTabsState extends State<OrdersTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: const Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => widget.onTap(1),
              child: Container(
                decoration: BoxDecoration(
                  color: widget.selectedTab == 1
                      ? const Color(0xFF003A46)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: TrText(
                    'الحالية',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: widget.selectedTab == 1
                          ? Colors.white
                          : const Color(0xFFACAEBE),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: GestureDetector(
              onTap: () => widget.onTap(0),
              child: Container(
                decoration: BoxDecoration(
                  color: widget.selectedTab == 0
                      ? const Color(0xFF003A46)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: TrText(
                    'المنتهية',
                    style: TextStyle(
                      fontFamily: 'Almarai',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: widget.selectedTab == 0
                          ? Colors.white
                          : const Color(0xFFACAEBE),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

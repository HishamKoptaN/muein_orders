import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../../../core/widgets/translated_text.dart';
import '../../domain/entities/notification_entity.dart';
import '../bloc/notifications_bloc.dart';
import 'widgets/notification_row.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  static const String routeName = 'notifications';

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  @override
  void initState() {
    super.initState();
    getIt<NotificationsBloc>().add(const NotificationsEvent.getNotifications());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'الإشعارات'),
      body: Container(
        color: const Color(0xFFFFFFFF),
        width: double.infinity,
        height: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: const Color(0xFFF7F7F7),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                BlocBuilder<NotificationsBloc, NotificationsState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      loaded: (notifications) {
                        return ListView.separated(
                          shrinkWrap: true,
                          itemCount: notifications.length,
                          itemBuilder: (context, i) {
                            final noti = notifications[i];
                            return NotificationRow(item: noti);
                          },
                          separatorBuilder: (context, i) {
                            return Gap(10.h);
                          },
                        );
                      },
                      orElse: () {
                        return const SizedBox();
                      },
                    );
                  },
                ),
                // ...sectionsToShow.entries.expand(
                //   (entry) => [
                //     _SectionLabel(text: entry.key),
                //     _NotificationsCard(items: entry.value),
                //     const SizedBox(height: 16),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Tabs extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onChanged;
  const _Tabs({required this.selectedIndex, required this.onChanged});

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
            child: _TabButton(
              text: 'جديد',
              selected: selectedIndex == 0,
              onTap: () => onChanged(0),
            ),
          ),
          Expanded(
            child: _TabButton(
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

class _TabButton extends StatelessWidget {
  final String text;
  final bool selected;
  final VoidCallback onTap;
  const _TabButton({
    required this.text,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final Color bg = selected ? const Color(0xFFFFFFFF) : Colors.transparent;
    final Color fg = selected
        ? const Color(0xFF222741)
        : const Color(0xFFACAEBE);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: TrText(text, style: TextStyle(color: fg, fontSize: 16)),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  final String text;
  const _SectionLabel({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32, top: 16, bottom: 8),
      child: Align(
        alignment: Alignment.centerRight,
        child: TrText(
          text,
          style: const TextStyle(color: Color(0xFFACAEBE), fontSize: 14),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}

class _NotificationsCard extends StatelessWidget {
  final List<NotificationEntity> items;
  const _NotificationsCard({required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          for (int i = 0; i < items.length; i++) ...[
            NotificationRow(item: items[i]),
            if (i != items.length - 1)
              const Divider(
                height: 1,
                thickness: 0.5,
                color: Color(0xFFEFEFEF),
              ),
          ],
        ],
      ),
    );
  }
}

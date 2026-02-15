import 'package:flutter/material.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  static const String routeName = 'notifications';

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  int _selectedTab = 0;
  static const _today = 'اليوم';
  static const _yesterday = 'أمس';

  final Map<String, List<_NotificationItem>> _sections = const {
    _today: [
      _NotificationItem(
        title: 'لديك إشعار جديد',
        time: '11.00 مساءا',
        imageUrl:
            'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/FaxZER9xNj/ax1cop33_expires_30_days.png',
      ),
      _NotificationItem(
        title: 'لديك إشعار جديد',
        time: '11.00 مساءا',
        imageUrl:
            'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/FaxZER9xNj/73ztlduz_expires_30_days.png',
      ),
      _NotificationItem(
        title: 'لديك إشعار جديد',
        time: '11.00 مساءا',
        imageUrl:
            'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/FaxZER9xNj/0fsiwgx1_expires_30_days.png',
      ),
    ],
    _yesterday: [
      _NotificationItem(
        title: 'لديك إشعار جديد',
        time: '11.00 مساءا',
        imageUrl:
            'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/FaxZER9xNj/cu5w04vd_expires_30_days.png',
      ),
      _NotificationItem(
        title: 'لديك إشعار جديد',
        time: '11.00 مساءا',
        imageUrl:
            'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/FaxZER9xNj/byw4so8q_expires_30_days.png',
      ),
      _NotificationItem(
        title: 'لديك إشعار جديد',
        time: '11.00 مساءا',
        imageUrl:
            'https://storage.googleapis.com/tagjs-prod.appspot.com/v1/FaxZER9xNj/pp1g24dj_expires_30_days.png',
      ),
    ],
  };

  @override
  Widget build(BuildContext context) {
    final sectionsToShow = _selectedTab == 0
        ? {_today: _sections[_today]!}
        : _sections;

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xFFFFFFFF),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: const Color(0xFFF7F7F7),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const _Header(),
                        _Tabs(
                          selectedIndex: _selectedTab,
                          onChanged: (i) => setState(() => _selectedTab = i),
                        ),
                        const SizedBox(height: 8),
                        ...sectionsToShow.entries.expand(
                          (entry) => [
                            _SectionLabel(text: entry.key),
                            _NotificationsCard(items: entry.value),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      padding: const EdgeInsets.only(bottom: 16, top: 24),
      child: const Center(
        child: Text(
          'الإشعارات',
          style: TextStyle(
            color: Color(0xFF222741),
            fontSize: 18,
            fontWeight: FontWeight.bold,
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
        child: Text(text, style: TextStyle(color: fg, fontSize: 16)),
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
        child: Text(
          text,
          style: const TextStyle(color: Color(0xFFACAEBE), fontSize: 14),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}

class _NotificationsCard extends StatelessWidget {
  final List<_NotificationItem> items;
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
            _NotificationRow(item: items[i]),
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

class _NotificationRow extends StatelessWidget {
  final _NotificationItem item;
  const _NotificationRow({required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                    color: Color(0xFF222741),
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.right,
                ),
                const SizedBox(height: 7),
                Text(
                  item.time,
                  style: const TextStyle(
                    color: Color(0xFFA8A8A9),
                    fontSize: 10,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          SizedBox(
            width: 40,
            height: 40,
            child: Image.network(item.imageUrl, fit: BoxFit.fill),
          ),
        ],
      ),
    );
  }
}

class _NotificationItem {
  final String title;
  final String time;
  final String imageUrl;
  const _NotificationItem({
    required this.title,
    required this.time,
    required this.imageUrl,
  });
}

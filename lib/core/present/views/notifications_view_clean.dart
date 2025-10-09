import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../features/cached_docs/data/datasources/local/drift/app_database.dart';
import '../../../features/cached_docs/data/mappers/cached_doc_mapper.dart';
import '../../../features/cached_docs/domain/entities/cached_doc_entity.dart';
import '../../../l10n/app_localizations.dart';
import '../../di/dependency_injection.dart';
import '../../widgets/custom_app_bar.dart';

part 'notifications/notification_item.dart';
part 'notifications/notification_list.dart';
part 'notifications/notification_stream.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  static const String routeName = 'notifications';

  @override
  State<NotificationsView> createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  late final AppDatabase _db;
  late final Stream<List<CachedDocEntity>> _docsStream;

  @override
  void initState() {
    super.initState();
    _db = getIt<AppDatabase>();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return Scaffold(
      appBar: CustomAppBar(
        title: 'الإشعارات',
      ),
      body: _NotificationStream(
        docsStream: _docsStream,
      ),
    );
  }
}

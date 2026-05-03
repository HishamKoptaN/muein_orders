import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../cached_docs/data/datasources/local/drift/cached_docs_table.dart';
import '../../../../cached_docs/data/datasources/local/drift/file_upload_status_extension.dart';
import '../../bloc/orders_bloc.dart';

class OrdersFilterWidget extends StatelessWidget {
  const OrdersFilterWidget({
    super.key,
    required this.selectedStatus,
    this.showClearFilter = true,
  });
  final FileUploadStatus? selectedStatus;
  final bool showClearFilter;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<FileUploadStatus?>(
      icon: Icon(
        selectedStatus != null ? Icons.filter_alt : Icons.filter_alt_outlined,
        color: selectedStatus?.color,
      ),
      onSelected: (status) {
        context.read<OrdersBloc>().add(
          OrdersEvent.filterChanged(status: status),
        );
      },
      itemBuilder: (context) => [
        if (showClearFilter)
          PopupMenuItem(
            value: null,
            child: Row(
              children: [
                Icon(
                  selectedStatus == null
                      ? Icons.check_box
                      : Icons.check_box_outline_blank,
                  color: Colors.grey,
                ),
                const SizedBox(width: 8),
                const Text('الكل'),
              ],
            ),
          ),
        ...FileUploadStatus.values.map((status) {
          final isSelected = selectedStatus?.name == status.name;
          return PopupMenuItem(
            value: status,
            child: Row(
              children: [
                Icon(
                  isSelected ? Icons.check_box : Icons.check_box_outline_blank,
                  color: status.color,
                ),
                const SizedBox(width: 8),
                Icon(status.icon, color: status.color, size: 18),
                const SizedBox(width: 8),
                Text(status.label),
              ],
            ),
          );
        }),
      ],
    );
  }
}

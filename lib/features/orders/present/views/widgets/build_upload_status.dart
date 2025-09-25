import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/orders_res_entity.dart';

Widget buildUploadStatus(
    {required int orderId, required BuildContext context}) {
  // final statusData =
  //  context.read<DocsBloc>().getUploadStatusForOrder(orderId);
  Widget buildStatusText() {
    // if (statusData == null) return const Text('لم يبدأ');
    // switch (statusData.status) {
    //   case DocUploadStatus.uploading:
    //     return Text(
    //       "جاري الرفع ${statusData.progress ?? ''}",
    //       style: Theme.of(context).textTheme.titleLarge?.copyWith(
    //             color: Theme.of(context).colorScheme.onSecondary,
    //           ),
    //       // style: TextStyle(color: Colors.orange)
    //     );
    //   case DocUploadStatus.success:
    //     return Text(
    //       'تم الرفع',
    //       style: Theme.of(context).textTheme.titleLarge?.copyWith(
    //             color: Theme.of(context).colorScheme.onSecondary,
    //           ),
    //       //  style: TextStyle(color: Colors.green)
    //     );
    //   case DocUploadStatus.failed:
    //     return Text(
    //       'فشل الرفع',
    //       style: Theme.of(context).textTheme.titleLarge?.copyWith(
    //             color: Theme.of(context).colorScheme.onSecondary,
    //           ),
    //       //  style: TextStyle(color: Colors.red)
    //     );
    //   case DocUploadStatus.notStarted:
    //   default:
    //     return Text(
    //       'لم يبدأ',
    //       style: Theme.of(context).textTheme.titleLarge?.copyWith(
    //             color: Theme.of(context).colorScheme.onSecondary,
    //           ),
    //     );
    // }
    return const Text('لم يبدأ', style: TextStyle(color: Colors.grey));
  }

  // if (statusData == null) {
  //   return const Text('لم يبدأ', style: TextStyle(color: Colors.grey));
  // }
  // switch (statusData.status) {
  //   case DocUploadStatus.uploading:
  //     return Text(
  //       'جاري الرفع ${statusData.progress ?? ""}',
  //       style: const TextStyle(color: Colors.orange),
  //     );
  //   case DocUploadStatus.success:
  //     return const Text('تم الرفع', style: TextStyle(color: Colors.green));
  //   case DocUploadStatus.failed:
  //     return const Text('فشل الرفع', style: TextStyle(color: Colors.red));
  //   default:
  //     return const Text('لم يبدأ', style: TextStyle(color: Colors.grey));
  // }
  return const Text('لم يبدأ', style: TextStyle(color: Colors.grey));
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../../../../core/widgets/translated_text.dart';
import '../../../../data/datasources/local_data_src/drift/tables/items_table.dart';

class PlaceholderWidget extends StatelessWidget {
  const PlaceholderWidget({super.key, required this.docMediaType});
  final DocMediaType docMediaType;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          if (docMediaType == .video)
            Image.asset(
              'assets/icons/iconoir_add-media-video.png',
              width: 34.r,
              height: 34.r,
            ),
          if (docMediaType == .image)
            Icon(
              Icons.add_photo_alternate_outlined,
              size: 28.r,
              color: Colors.grey,
            ),
          SizedBox(height: 8.h),
          TrText(
            docMediaType == .video ? 'اضافة فيديو' : 'اضافة صورة',
            style: context.textTheme.bodySmall?.copyWith(
              color: context.colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}

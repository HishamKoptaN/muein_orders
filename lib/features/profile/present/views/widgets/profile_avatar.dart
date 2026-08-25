import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../../core/widgets/custom_image.dart';
import '../../../domain/entities/update_profile_req_entity.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    required this.path,
    required this.updateProfileReq,
    this.onEditImageTap,
  });

  final String path;
  final UpdateProfileReqEntity? updateProfileReq;
  final VoidCallback? onEditImageTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipOval(
              clipBehavior: .antiAlias,
              child: CustomImage(
                path: path,
                width: 140.r,
                height: 140.r,
                fit: .cover,
              ),
            ),
            if (updateProfileReq != null)
              Positioned(
                bottom: 5.h,
                right: 1.w,
                child: GestureDetector(
                  onTap: onEditImageTap,
                  child: FaIcon(
                    FontAwesomeIcons.penToSquare,
                    color: context.colorScheme.secondary,
                    size: 28.r,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

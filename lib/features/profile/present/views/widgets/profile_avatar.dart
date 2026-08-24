import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../domain/entities/profile_res_entity.dart';
import '../../../domain/entities/update_profile_req_entity.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    required this.profile,
    required this.updateProfileReq,
    this.onEditImageTap,
  });

  final ProfileResEntity profile;
  final UpdateProfileReqEntity? updateProfileReq;
  final VoidCallback? onEditImageTap;
  Widget _buildAvatarImage() {
    Widget imageWidget;
    if (updateProfileReq?.avatar?.value != null) {
      imageWidget = Image.file(
        File(updateProfileReq!.avatar!.value!.path),
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => buildPlaceholder(),
      );
    } else if (profile.avatar != null && profile.avatar!.isNotEmpty) {
      imageWidget = Image.network(
        profile.avatar!,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => buildPlaceholder(),
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return const Center(child: CircularProgressIndicator(strokeWidth: 2));
        },
      );
    } else {
      imageWidget = buildPlaceholder();
    }

    return Container(
      width: 110.w,
      height: 110.w,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
      clipBehavior: Clip.antiAlias,
      child: imageWidget,
    );
  }

  Widget buildPlaceholder() {
    return Icon(Icons.person, size: 60.sp, color: Colors.grey[600]);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                //   border: Border.all(color: AppColors.brandMint, width: 3),
              ),
              child: _buildAvatarImage(),
            ),
            if (updateProfileReq != null)
              Positioned(
                bottom: 5.h,
                right: 10.w,
                child: GestureDetector(
                  onTap: onEditImageTap,
                  child: FaIcon(
                    FontAwesomeIcons.penToSquare,
                    color: Colors.green,
                    size: 22.w,
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}

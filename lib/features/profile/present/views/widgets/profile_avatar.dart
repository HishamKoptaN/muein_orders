import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../domain/entities/profile_res_entity.dart';
import '../../../domain/entities/update_profile_req_entity.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    super.key,
    required this.profile,
    required this.updateProfileReq,
    required this.isEditing,
    required this.onEditImageTap,
  });

  final ProfileResEntity profile;
  final UpdateProfileReqEntity? updateProfileReq;
  final bool isEditing;
  final VoidCallback onEditImageTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.brandMint, width: 3),
            // image: DecorationImage(
            //   image: _getProfileImage(),
            //   fit: BoxFit.cover,
            // ),
          ),
          child: Icon(Icons.person, color: Colors.black, size: 80.w),
        ),
        // if (isEditing)
        //   Positioned(
        //     bottom: 0,
        //     right: 0,
        //     child: GestureDetector(
        //       onTap: onEditImageTap,
        //       child: Container(
        //         width: 40,
        //         height: 40,
        //         decoration: const BoxDecoration(
        //           color: AppColors.brandMint,
        //           shape: BoxShape.circle,
        //         ),
        //         child: const Icon(
        //           Icons.edit_outlined,
        //           color: Colors.white,
        //           size: 20,
        //         ),
        //       ),
        //     ),
        //   ),
        const SizedBox(height: 12),
        Text(
          profile.name ?? '',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.star, color: Colors.amber, size: 18),
            const Text(' 4.7', style: TextStyle(color: Colors.grey)),
            Icon(Icons.chevron_left, color: Colors.grey[400], size: 20),
          ],
        ),
      ],
    );
  }

  ImageProvider _getProfileImage() {
    if (isEditing && updateProfileReq?.image?.value != null) {
      return FileImage(updateProfileReq!.image!.value!);
    } else if (profile.image != null) {
      return NetworkImage(profile.image!);
    }
    return const AssetImage('assets/images/default_avatar.png');
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../profile/present/bloc/profile_bloc.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 30.h,
        bottom: 10.h,
        right: 20.w,
        left: 20.w,
      ),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (profile, updateProfileReq, isEditing, formzSubmissionStatus) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundColor: Color(0xFFE0E0E0),
                    // backgroundImage: NetworkImage('https://via.placeholder.com/150'),
                    child: Icon(
                      Icons.person_rounded, // أيقونة شخص بشكل عصري
                      size: 50,
                      color: Color(
                        0xFF003A46,
                      ), // استخدام اللون الداكن المعتمد في هويتك البصرية
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    profile.name ?? '',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF003A46),
                    ),
                  ),
                  Text(
                    '${profile.id.toString()}654321' ?? '',
                    style: const TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  const SizedBox(height: 5),
                  // InkWell(
                  //   onTap: () {
                  //     // منطق النسخ
                  //   },
                  //   child: const Row(
                  //     mainAxisSize: MainAxisSize.min,
                  //     children: [
                  //       Icon(Icons.copy_outlined, size: 14, color: Colors.grey),
                  //       SizedBox(width: 5),
                  //       Text(
                  //         'رابط الملف الشخصي',
                  //         style: TextStyle(color: Colors.grey, fontSize: 12),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              );
            },
            orElse: () {
              return const SizedBox();
            },
          );
        },
      ),
    );
  }
}

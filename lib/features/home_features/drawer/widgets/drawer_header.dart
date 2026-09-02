import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theme/core/extensions/theme_ext.dart';
import '../../../../core/widgets/custom_image.dart';
import '../../../../core/widgets/translated_text.dart';
import '../../../profile/present/bloc/profile_bloc.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .only(top: 30.h, bottom: 10.h, right: 20.w, left: 20.w),
      child: BlocBuilder<ProfileBloc, ProfileState>(
        bloc: getIt<ProfileBloc>(),
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (profile, updateProfileReq, formzSubmissionStatus) {
              return Column(
                crossAxisAlignment: .start,
                mainAxisAlignment: .start,
                mainAxisSize: .min,
                children: [
                  ClipOval(
                    clipBehavior: .antiAlias,
                    child: CustomImage(
                      path: profile.avatar ?? '',
                      width: 90.r,
                      height: 90.r,
                      fit: .cover,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  TrText(
                    profile.name ?? '',
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: context.colorScheme.primary,
                    ),
                  ),
                  TrText(
                    '${profile.id.toString()}@',
                    style: context.textTheme.bodyMedium,
                  ),
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

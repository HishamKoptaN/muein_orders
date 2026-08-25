import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/custom_scaffold.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/feedback/error_content.dart';
import '../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../domain/entities/profile_res_entity.dart';
import '../bloc/profile_bloc.dart';
import 'profile_body.dart';
import '../../../../core/theme/core/extensions/theme_ext.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});
  static const String routeName = 'profile';

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  void initState() {
    super.initState();
    getIt<ProfileBloc>().add(const ProfileEvent.getProfile());
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: 'الملف الشخصي'),
      backgroundColor: context.colorScheme.onPrimary,
      body: Column(
        children: [
          Gap(15.h),
          BlocConsumer<ProfileBloc, ProfileState>(
            bloc: getIt<ProfileBloc>(),
            listener: (context, state) {
              state.whenOrNull(
                success: () {
                  context.showSuccessSnackBar(
                    title: 'تم تحديث الملف الشخصي بنجاح',
                  );
                },
                failure: (error) {
                  context.showErrorSnackBar(title: error);
                },
              );
            },
            builder: (context, state) {
              return state.maybeMap(
                loaded: (loadedState) {
                  return ProfileBody(
                    profile: loadedState.profile,
                    formzSubmissionStatus: loadedState.formzSubmissionStatus,
                    updateProfileReq: loadedState.updateProfileReq,
                  );
                },
                loading: (state) {
                  return Skeletonizer(
                    enabled: true,
                    enableSwitchAnimation: true,
                    child: ProfileBody(
                      updateProfileReq: null,
                      profile: ProfileResEntity(),
                      formzSubmissionStatus: .initial,
                    ),
                  );
                },
                failure: (state) {
                  return ErrorContent(
                    retryText: 'إعادة المحاولة',
                    message: state.error,
                    onRetry: () {
                      getIt<ProfileBloc>().add(const ProfileEvent.getProfile());
                    },
                  );
                },
                orElse: () {
                  return const SizedBox();
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Widget buildDivider() {
    return const Divider(height: 1, indent: 16, endIndent: 16);
  }
}

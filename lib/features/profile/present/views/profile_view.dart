import 'dart:io';

import 'package:form_inputs/form_inputs/generic_formz_input.dart';
import 'package:formz/formz.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/all_imports.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_circular_progress.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/error_content.dart';
import '../../../../l10n/app_localizations.dart';
import '../bloc/profile_bloc.dart';
import 'widgets/profile_widgets.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});
  static const String routeName = 'profile';
  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  late TextEditingController _nameController;
  late TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _phoneController = TextEditingController();
    context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  Future<void> _onEditImageTap() async {
    final File? pickedImage = await pickImageFromGallery();
    if (pickedImage != null) {
      context.read<ProfileBloc>().add(
            ProfileEvent.dataChanged(
              image: GenericFormzInput<File>.dirty(pickedImage),
            ),
          );
    }
  }

  Future<File?> pickImageFromGallery() async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? pickedFile = await picker.pickImage(
        source: ImageSource.gallery,
        maxHeight: 800,
        maxWidth: 800,
        imageQuality: 85,
      );

      if (pickedFile != null) {
        return File(pickedFile.path);
      }
      return null;
    } catch (e) {
      // يمكن إضافة معالجة للأخطاء هنا إذا لزم الأمر
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return CustomScaffold(
      appBar: CustomAppBar(title: t.profile),
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (
              profile,
              isEditingProfile,
              formzSubmissionStatus,
            ) {
              _nameController.text = profile.name!;
              _phoneController.text = profile.phone!;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  buildProfileAvatar(
                    image: profile.image!,
                    isEditing: isEditingProfile,
                    selectedImage: profile.selectedImage,
                    onEditImageTap: isEditingProfile ? _onEditImageTap : null,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTextFormField(
                        prefixIcon: Icon(
                          Icons.person,
                          color: AppColors.brandMint,
                          size: 35.sp,
                        ),
                        controller: _nameController,
                        enabled: isEditingProfile,
                        readOnly: !isEditingProfile,
                        onChanged: (v) {
                          _nameController.text = v;
                          ProfileEvent.dataChanged(
                            name: GenericFormzInput<String>.dirty(v),
                          );
                        },
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        style: AppTextStyles.bodyLarge.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      buildDivider(),
                      CustomTextFormField(
                        initialValue: profile.email,
                        prefixIcon: Icon(
                          Icons.email,
                          color: AppColors.brandMint,
                          size: 35.sp,
                        ),
                        enabled: false,
                        readOnly: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        style: AppTextStyles.bodyLarge.copyWith(
                          color:
                              isEditingProfile ? Colors.black54 : Colors.black,
                        ),
                      ),
                      buildDivider(),
                      CustomTextFormField(
                        controller: _phoneController,
                        prefixIcon: Icon(
                          Icons.phone,
                          color: AppColors.brandMint,
                          size: 35.sp,
                        ),
                        enabled: isEditingProfile,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 8,
                        ),
                        style: AppTextStyles.bodyLarge.copyWith(
                          color: Colors.black,
                        ),
                      ),
                      buildDivider(),
                      CustomTextFormField(
                        initialValue: profile.balance!.currentBalance,
                        prefixIcon: Icon(
                          Icons.account_balance_wallet,
                          color: AppColors.brandMint,
                          size: 35.sp,
                        ),
                        enabled: true,
                        style: AppTextStyles.bodyMedium.copyWith(
                          color:
                              isEditingProfile ? Colors.black54 : Colors.black,
                        ),
                      ),
                      buildDivider(),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const SizedBox.shrink(),
                  if (!isEditingProfile)
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          context.read<ProfileBloc>().add(
                                const ProfileEvent.startEditing(),
                              );
                        },
                        icon: Icon(Icons.edit, size: 24.sp),
                        label: Text(
                          t.editProfile,
                          style: AppTextStyles.bodyLarge.copyWith(),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.brandMint,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 24,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  if (isEditingProfile)
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              context.read<ProfileBloc>().add(
                                    const ProfileEvent.cancelEditing(),
                                  );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  AppColors.outline.withValues(alpha: 0.3),
                              foregroundColor: AppColors.onSurface,
                              padding: const EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 24,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(
                              t.cancel,
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton.icon(
                            onPressed: () {
                              context.read<ProfileBloc>().add(
                                    const ProfileEvent.updateProfile(),
                                  );
                            },
                            label: formzSubmissionStatus.isInProgress
                                ? const CustomCircularProgress()
                                : Text(
                                    t.save,
                                  ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.brandMint,
                              foregroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                vertical: 20,
                                horizontal: 24,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              );
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    AppColors.brandMint,
                  ),
                ),
              );
            },
            failure: (message) {
              return ErrorContent(
                message: message,
                onRetry: () => context.read<ProfileBloc>().add(
                      const ProfileEvent.getProfile(),
                    ),
                retryText: t.retry,
              );
            },
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}

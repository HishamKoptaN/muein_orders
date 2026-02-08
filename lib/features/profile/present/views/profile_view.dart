import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/feedback/error_content.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/entities/update_profile_req_entity.dart';
import '../bloc/profile_bloc.dart';
import 'widgets/profile_avatar.dart';

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

  Future<void> _onEditImageTap({
    required UpdateProfileReqEntity updateProfileReq,
  }) async {
    // final File? pickedImage = await pickImageFromGallery();
    // if (pickedImage != null) {
    //   context.read<ProfileBloc>().add(
    //     ProfileEvent.dataChanged(
    //       updateProfileReq: updateProfileReq.copyWith(
    //         image: GenericFormzInput<File>.dirty(pickedImage),
    //       ),
    //     ),
    //   );
    // }
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
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          _buildAppBar(context: context, t: t),
          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              return state.maybeWhen(
                loaded:
                    (
                      profile,
                      updateProfileReq,
                      isEditing,
                      formzSubmissionStatus,
                    ) {
                      return Expanded(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.symmetric(horizontal: 22),
                          child: Column(
                            children: [
                              ProfileAvatar(
                                profile: profile,
                                updateProfileReq: updateProfileReq,
                                isEditing: isEditing,
                                onEditImageTap: () => _onEditImageTap(
                                  updateProfileReq: updateProfileReq!,
                                ),
                              ),
                              const SizedBox(height: 30),
                              _buildInfoField(
                                initialValue: isEditing
                                    ? updateProfileReq?.name?.value ?? ''
                                    : profile.name ?? '',
                                icon: Icons.person_rounded,
                                enabled: isEditing,
                                readOnly: !isEditing,
                                onChanged: (v) {
                                  getIt<ProfileBloc>().add(
                                    ProfileEvent.dataChanged(
                                      updateProfileReq: updateProfileReq
                                          ?.copyWith(
                                            name:
                                                GenericFormzInput<String>.dirty(
                                                  v,
                                                ),
                                          ),
                                    ),
                                  );
                                },
                              ),
                              if (!isEditing)
                                _buildInfoField(
                                  key: const ValueKey('email_field'),
                                  initialValue: profile.email ?? '',
                                  icon: Icons.email_outlined,
                                ),
                              _buildInfoField(
                                key: const ValueKey('phone_field'),
                                initialValue: isEditing
                                    ? updateProfileReq?.phone?.value ?? ''
                                    : profile.phone ?? '',
                                icon: Icons.phone_android_rounded,
                                enabled: isEditing,
                                readOnly: !isEditing,
                                onChanged: (v) {
                                  getIt<ProfileBloc>().add(
                                    ProfileEvent.dataChanged(
                                      updateProfileReq: updateProfileReq
                                          ?.copyWith(
                                            phone: PhoneNumberInput.dirty(v),
                                          ),
                                    ),
                                  );
                                },
                              ),
                              if (!isEditing)
                                _buildInfoField(
                                  key: const ValueKey('country_field'),
                                  initialValue: 'السعودية',
                                  icon: Icons.location_on_outlined,
                                ),
                              if (!isEditing)
                                _buildSubmitButton(
                                  text: 'تعديل البيانات',
                                  onPressed: () {
                                    context.read<ProfileBloc>().add(
                                      const ProfileEvent.startEdit(),
                                    );
                                  },
                                  formzSubmissionStatus: formzSubmissionStatus,
                                  updateProfileReq: updateProfileReq,
                                ),
                              Gap(50.h),
                              if (isEditing) ...[
                                Row(
                                  children: [
                                    Expanded(
                                      child: _buildSubmitButton(
                                        text: 'حفظ',
                                        onPressed: () {
                                          context.read<ProfileBloc>().add(
                                            const ProfileEvent.updateProfile(),
                                          );
                                        },
                                        formzSubmissionStatus:
                                            formzSubmissionStatus,
                                        updateProfileReq: updateProfileReq,
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    Expanded(
                                      child: _buildSubmitButton(
                                        text: 'إلغاء',
                                        onPressed: () {
                                          context.read<ProfileBloc>().add(
                                            const ProfileEvent.cancelEdit(),
                                          );
                                        },
                                        formzSubmissionStatus:
                                            formzSubmissionStatus,
                                        updateProfileReq: updateProfileReq,
                                      ),
                                    ),
                                  ],
                                ),
                                Gap(50.h),
                              ],
                            ],
                          ),
                        ),
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
        ],
      ),
    );
  }

  Widget _buildUserInfo({required String name, required String phone}) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Text(
          name,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Color(0xFF262626),
            fontFamily: 'Almarai',
          ),
        ),
        const SizedBox(height: 4),
        Text(
          phone,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFFA6A6A6),
            fontFamily: 'Almarai',
          ),
        ),
      ],
    );
  }

  Widget _buildAppBar({
    required BuildContext context,
    required AppLocalizations t,
  }) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_new, size: 20),
            onPressed: () => Navigator.pop(context),
          ),
          Text(
            t.profile,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 40),
        ],
      ),
    );
  }

  Widget _buildInfoField({
    Key? key,
    required IconData icon,
    required String initialValue,
    TextEditingController? controller,
    void Function(String)? onChanged,
    bool? enabled,
    bool? readOnly,
  }) {
    return Container(
      key: key,
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 4,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        initialValue: controller == null ? initialValue : null,
        onChanged: onChanged,
        readOnly: readOnly ?? false,
        textAlign: TextAlign.right,
        style: const TextStyle(
          color: Color(0xFF757575),
          fontSize: 16,
          fontFamily: 'Almarai',
        ),
        decoration: InputDecoration(
          enabled: enabled ?? false,
          filled: true,
          fillColor: const Color(0xFFFCFCFC),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 18,
          ),
          suffixIcon: Icon(icon, color: const Color(0xFF757575), size: 22),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Color(0xFFF0EFEF)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Color(0xFF83BEA8), width: 1.5),
          ),
        ),
      ),
    );
  }

  Widget _buildSubmitButton({
    required String text,
    required UpdateProfileReqEntity? updateProfileReq,
    required FormzSubmissionStatus? formzSubmissionStatus,
    required void Function()? onPressed,
  }) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF83BEA8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildProfileAvatar({
    required String image,
    required bool isEditing,
    File? selectedImage,
    VoidCallback? onEditImageTap,
  }) {
    return Stack(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.brandMint, width: 3),
            image: DecorationImage(
              image: isEditing && selectedImage != null
                  ? FileImage(selectedImage)
                  : NetworkImage(image) as ImageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        if (isEditing)
          Positioned(
            bottom: 0,
            right: 0,
            child: GestureDetector(
              onTap: onEditImageTap,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.brandMint,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const Icon(
                  Icons.photo_camera,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget buildDivider() {
    return Divider(
      height: 1,
      color: AppColors.outline.withValues(alpha: 0.3),
      indent: 16,
      endIndent: 16,
    );
  }
}

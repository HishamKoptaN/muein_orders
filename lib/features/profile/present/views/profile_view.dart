import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_inputs/form_inputs.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
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
  final ImagePicker _imagePicker = ImagePicker();

  @override
  void initState() {
    super.initState();
    getIt<ProfileBloc>().add(const ProfileEvent.getProfile());
  }

  Future<File?> _selectImageFromGallery() async {
    try {
      final XFile? pickedFile = await _imagePicker.pickImage(
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
          BlocConsumer<ProfileBloc, ProfileState>(
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
                loaded: (state) {
                  return Expanded(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Column(
                        children: [
                          ProfileAvatar(
                            profile: state.profile,
                            updateProfileReq: state.updateProfileReq,
                            onEditImageTap: () async {
                              final File? pickedImage =
                                  await _selectImageFromGallery();
                              if (pickedImage != null) {
                                getIt<ProfileBloc>().add(
                                  ProfileEvent.dataChanged(
                                    loadedState: state.copyWith(
                                      updateProfileReq: state.updateProfileReq
                                          ?.copyWith(
                                            avatar:
                                                GenericFormzInput<File>.dirty(
                                                  pickedImage,
                                                ),
                                          ),
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                          const SizedBox(height: 12),
                          Text(
                            state.profile.name ?? '',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.chevron_left,
                                color: Colors.grey[400],
                                size: 20,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 18,
                              ),
                              const Text(
                                ' 4.7',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          _buildInfoField(
                            initialValue:
                                state.updateProfileReq?.isBlank == true
                                // false
                                ? state.updateProfileReq?.name?.value ?? ''
                                : state.profile.name ?? '',
                            icon: Icons.person_rounded,
                            enabled: state.updateProfileReq != null,
                            onChanged: (v) {
                              getIt<ProfileBloc>().add(
                                ProfileEvent.dataChanged(
                                  loadedState: state.copyWith(
                                    updateProfileReq: state.updateProfileReq
                                        ?.copyWith(
                                          name: GenericFormzInput<String>.dirty(
                                            v,
                                          ),
                                        ),
                                  ),
                                ),
                              );
                            },
                          ),
                          if (state.updateProfileReq == null)
                            _buildInfoField(
                              key: const ValueKey('email_field'),
                              initialValue: state.profile.email ?? '',
                              icon: Icons.email_outlined,
                            ),
                          _buildInfoField(
                            key: const ValueKey('phone_field'),
                            initialValue:
                                state.updateProfileReq?.isBlank == true
                                ? state.updateProfileReq?.phone?.value ?? ''
                                : state.profile.phone ?? '',
                            keyboardType: TextInputType.phone,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            icon: Icons.phone_android_rounded,
                            enabled: state.updateProfileReq != null,
                            onChanged: (v) {
                              getIt<ProfileBloc>().add(
                                ProfileEvent.dataChanged(
                                  loadedState: state.copyWith(
                                    updateProfileReq: state.updateProfileReq
                                        ?.copyWith(
                                          phone: PhoneNumberInput.dirty(v),
                                        ),
                                  ),
                                ),
                              );
                            },
                          ),
                          if (state.updateProfileReq == null)
                            _buildSubmitButton(
                              text: 'تعديل البيانات',
                              onPressed: () {
                                print(
                                  'Button pressed! updateProfileReq is null: ${state.updateProfileReq == null}',
                                );
                                getIt<ProfileBloc>().add(
                                  ProfileEvent.dataChanged(
                                    loadedState: state.copyWith(
                                      updateProfileReq: UpdateProfileReqEntity(
                                        id: GenericFormzInput.dirty(
                                          state.profile.id ?? 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                              formzSubmissionStatus:
                                  state.formzSubmissionStatus,
                              updateProfileReq: state.updateProfileReq,
                            ),
                          Gap(50.h),
                          if (state.updateProfileReq?.isBlank == true)
                            const Text(
                              'الرجاء ملء جميع الحقول',
                              style: TextStyle(color: Colors.red),
                            ),
                          if (state.updateProfileReq != null) ...[
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
                                        state.formzSubmissionStatus,
                                    updateProfileReq: state.updateProfileReq,
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: _buildSubmitButton(
                                    text: 'إلغاء',
                                    onPressed: () {
                                      getIt<ProfileBloc>().add(
                                        ProfileEvent.dataChanged(
                                          loadedState: state.copyWith(
                                            updateProfileReq: null,
                                          ),
                                        ),
                                      );
                                    },
                                    formzSubmissionStatus:
                                        state.formzSubmissionStatus,
                                    updateProfileReq: state.updateProfileReq,
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
                loading: (state) {
                  return const Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        AppColors.brandMint,
                      ),
                    ),
                  );
                },
                failure: (state) {
                  return ErrorContent(
                    message: state.error,
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
    TextInputType? keyboardType,
    List<TextInputFormatter>? inputFormatters,
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
        inputFormatters: inputFormatters,
        keyboardType: keyboardType,
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

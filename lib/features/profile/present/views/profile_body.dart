import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/widgets/loading/custom_circular_progress.dart';
import '../../../../core/widgets/translated_text.dart';
import '../../data/mappers/update_profile_mapper.dart';
import '../../domain/entities/profile_res_entity.dart';
import '../../domain/entities/update_profile_req_entity.dart';
import '../bloc/profile_bloc.dart';
import 'widgets/profile_avatar.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({
    super.key,
    required this.updateProfileReq,
    required this.profile,
    required this.formzSubmissionStatus,
  });
  final UpdateProfileReqEntity? updateProfileReq;
  final ProfileResEntity profile;
  final FormzSubmissionStatus formzSubmissionStatus;

  static const String routeName = 'profile';

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody> {
  final ImagePicker _imagePicker = ImagePicker();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: .symmetric(horizontal: 22.w),
      child: Column(
        children: [
          ProfileAvatar(
            path:
                widget.updateProfileReq?.avatar?.value?.path ??
                widget.profile.avatar ??
                '',
            updateProfileReq: widget.updateProfileReq,
            onEditImageTap: () async {
              await _imagePicker.pickImage(source: .gallery).then((
                pickedImage,
              ) {
                getIt<ProfileBloc>().add(
                  ProfileEvent.dataChanged(
                    updateProfileReq:
                        widget.updateProfileReq?.copyWith(
                          avatar: .dirty(pickedImage),
                        ) ??
                        const UpdateProfileReqEntity(),
                  ),
                );
              });
            },
          ),
          SizedBox(height: 12.h),
          TrText(widget.profile.name ?? ''),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.chevron_left, size: 20.r),
              Icon(Icons.star, color: Colors.amber, size: 18.r),
              const TrText(' 4.7', style: TextStyle(color: Colors.grey)),
            ],
          ),
          SizedBox(height: 30.h),
          _buildInfoField(
            initialValue:
                widget.updateProfileReq?.name?.value ??
                widget.profile.name ??
                '',
            icon: Icons.person_rounded,
            enabled: widget.updateProfileReq != null,
            onChanged: (v) {
              getIt<ProfileBloc>().add(
                ProfileEvent.dataChanged(
                  updateProfileReq:
                      widget.updateProfileReq?.copyWith(
                        name: .dirty(value: v),
                      ) ??
                      const UpdateProfileReqEntity(),
                ),
              );
            },
          ),
          if (widget.updateProfileReq == null)
            _buildInfoField(
              key: const ValueKey('email_field'),
              initialValue: widget.profile.email ?? '',
              icon: Icons.email_outlined,
            ),
          _buildInfoField(
            key: const ValueKey('phone_field'),
            initialValue:
                widget.updateProfileReq?.phone?.value ??
                widget.profile.phone ??
                '',
            keyboardType: TextInputType.phone,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            icon: Icons.phone_android_rounded,
            enabled: widget.updateProfileReq != null,
            onChanged: (v) {
              getIt<ProfileBloc>().add(
                ProfileEvent.dataChanged(
                  updateProfileReq:
                      widget.updateProfileReq?.copyWith(phone: .dirty(v)) ??
                      const UpdateProfileReqEntity(),
                ),
              );
            },
          ),
          if (widget.updateProfileReq == null)
            FilledButton.tonalIcon(
              onPressed: () {
                getIt<ProfileBloc>().add(
                  ProfileEvent.dataChanged(
                    updateProfileReq: UpdateProfileReqEntity(
                      id: .dirty(value: widget.profile.id.toString()),
                      name: .dirty(value: widget.profile.name.toString()),
                    ),
                  ),
                );
              },
              label: const TrText('تعديل البيانات'),
              icon: const Icon(Icons.edit),
            ),
          Gap(50.h),
          if (widget.updateProfileReq != null) ...[
            Row(
              children: [
                Expanded(
                  child: FilledButton.tonalIcon(
                    onPressed: widget.formzSubmissionStatus.isSuccess
                        ? () {
                            getIt<ProfileBloc>().add(
                              const ProfileEvent.updateProfile(),
                            );
                          }
                        : null,
                    label: widget.formzSubmissionStatus.isInProgress
                        ? const CustomCircularProgress()
                        : const TrText('حفظ'),
                    icon: const Icon(Icons.save),
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: FilledButton.tonalIcon(
                    onPressed: () {
                      getIt<ProfileBloc>().add(
                        const ProfileEvent.dataChanged(updateProfileReq: null),
                      );
                    },
                    label: const TrText('إلغاء'),
                    icon: const Icon(Icons.cancel),
                  ),
                ),
              ],
            ),
            Gap(50.h),
          ],
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
            offset: Offset.zero,
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        initialValue: controller == null ? initialValue : null,
        onChanged: onChanged,
        readOnly: readOnly ?? false,
        textAlign: TextAlign.right,
        style: const TextStyle(color: Color(0xFF757575), fontSize: 16),
        inputFormatters: inputFormatters,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          enabled: enabled ?? false,
          filled: true,
          fillColor: const Color(0xFFFCFCFC),
          suffixIcon: Icon(icon, color: const Color(0xFF757575), size: 22),
          enabledBorder: OutlineInputBorder(
            borderRadius: .circular(6.r),
            borderSide: const BorderSide(color: Color(0xFFF0EFEF)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: .circular(6.r),
            borderSide: const BorderSide(color: Color(0xFF83BEA8), width: 1.5),
          ),
        ),
      ),
    );
  }

  Widget buildDivider() {
    return const Divider(height: 1, indent: 16, endIndent: 16);
  }
}

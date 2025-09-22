import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../l10n/app_localizations.dart';
import '../bloc/language_bloc.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    final languages = [
      {"name": t.arabic, "code": "ar"},
      {"name": t.english, "code": "en"},
    ];

    return BlocBuilder<LanguageBloc, LanguageState>(
      bloc: getIt<LanguageBloc>(),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(t.changeLanguage, style: AppTextStyles.titleMedium),
            centerTitle: true,
          ),
          body: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  t.changeLanguage,
                  style: AppTextStyles.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 24.h),
                // ...languages.map((lang) {
                //   final isSelected = state.currentLocale.languageCode == lang['code'];
                //   return Card(
                //     margin: EdgeInsets.only(bottom: 12.h),
                //     elevation: 2,
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(12.r),
                //       side: isSelected
                //           ? BorderSide(color: AppColors.primary, width: 2)
                //           : BorderSide.none,
                //     ),
                //     child: ListTile(
                //       title: Text(
                //         lang['name']!,
                //         style: isSelected
                //             ? AppTextStyles.bodyMedium.copyWith(
                //                 color: AppColors.primary,
                //                 fontWeight: FontWeight.bold,
                //               )
                //             : AppTextStyles.bodyMedium,
                //       ),
                //       trailing: isSelected
                //           ? Icon(Icons.check_circle, color: AppColors.primary)
                //           : null,
                //       onTap: () {
                //         context.read<LanguageBloc>().add(_ChangeLanguage(
                //           languageCode: lang['code']!,
                //           countryCode: lang['countryCode']!,
                //         ));
                //         Navigator.pop(context);
                //       },
                //       contentPadding: EdgeInsets.symmetric(
                //         horizontal: 16.w,
                //         vertical: 8.h,
                //       ),
                //     ),
                //   );
                // },
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
//                   DropdownButtonFormField<String>(
//                     value: locale,
//                     isExpanded: true,
//                     decoration: InputDecoration(
//                       contentPadding: const EdgeInsets.symmetric(
//                         vertical: 20,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                     ),
//                     items: languages
//                         .map(
//                           (item) => DropdownMenuItem(
//                             value: item['key'],
//                             alignment: AlignmentDirectional.center,
//                             child: Text(
//                               item['name']!,
//                               overflow: TextOverflow.visible,
//                               style: const TextStyle(
//                                 fontSize: 20,
//                               ),
//                             ),
//                           ),
//                         )
//                         .toList(),
//                     onChanged: (value) {
//                       setState(
//                         () {
//                           locale = value!;
//                         },
//                       );
//                     },
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   SizedBox(
//                     width: size.width,
//                     child: TextButton(
//                       onPressed: () async {
//                         try {
//                           SharedPrefHelper.setData(
//                             key: SharedPrefKeys.languageCode,
//                             value: locale,
//                           );
//                           // ToastNotifier().showSuccess(
//                           //   context: context,
//                           //   message: t.languageChanged,
//                           // );
//                           Navigator.pushAndRemoveUntil(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => MyApp(
//                                 locale: locale,
//                               ),
//                             ),
//                             (route) => false,
//                           );
//                         } catch (e) {
//                           // ToastNotifier().showError(
//                           //   context: context,
//                           //   message: e.toString(),
//                           // );
//                         }
//                       },
//                       style: TextButton.styleFrom(
//                         textStyle: const TextStyle(fontSize: 20),
//                         backgroundColor: Colors.amber,
//                         padding: const EdgeInsets.all(15),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                       ),
//                       child: Text(
//                         t.change,
//                         style: const TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

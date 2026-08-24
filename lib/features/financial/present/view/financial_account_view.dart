import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/navigation/custom_app_bar.dart';
import '../blocs/financial_bloc/financial_bloc.dart';
import 'expenses_view.dart';

class FinancialAccountView extends StatefulWidget {
  const FinancialAccountView({super.key});
  static const String routeName = 'financial-account';

  @override
  State<FinancialAccountView> createState() => _FinancialAccountViewState();
}

class _FinancialAccountViewState extends State<FinancialAccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'الحساب المالي'),
      body: _buildAccountView(),
    );
  }

  Widget _buildAccountView() {
    return Padding(
      padding: EdgeInsets.all(16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BlocBuilder<FinancialBloc, FinancialState>(
            builder: (context, state) {
              return state.maybeMap(
                loaded: (state) {
                  return Container(
                    padding: EdgeInsets.all(24.w),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          // AppColors.brandMint.withValues(alpha: 0.3),
                          // AppColors.brandMint.withValues(alpha: 0.1),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(
                        //    color: AppColors.brandMint.withValues(alpha: 0.3),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.wallet,
                          size: 48.sp,
                          // color: AppColors.brandMint,
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          'الرصيد الحالي',
                          style: AppTextStyles.arabicBodyLarge.copyWith(
                            color: Colors.white70,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          '${state.financialAccount?.balance ?? 0}',
                          style: AppTextStyles.arabicTitleLarge.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                initial: (state) {
                  getIt<FinancialBloc>().add(const FinancialEvent.get());
                  return const SizedBox();
                },
                orElse: () {
                  return const SizedBox();
                },
              );
            },
          ),
          SizedBox(height: 32.h),
          _buildActionButton(
            icon: FontAwesomeIcons.clockRotateLeft,
            title: 'المعاملات السابقة',
            subtitle: 'عرض سجل المصروفات والمعاملات',
            onTap: () {
              context.pushNamed(ExpensesView.routeName);
            },
          ),
          SizedBox(height: 16.h),
          _buildActionButton(
            icon: FontAwesomeIcons.plus,
            title: 'إضافة مصروف',
            subtitle: 'تسجيل مصروف جديد',
            onTap: () {
              context.pushNamed('create-expense');
            },
            isPrimary: true,
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required FaIconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    bool isPrimary = false,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          //color: isPrimary
          //    ? AppColors.brandMint.withValues(alpha: 0.2)
          //    : AppColors.translucentFieldFill,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            //  color: isPrimary
            //      ? AppColors.brandMint.withValues(alpha: 0.5)
            //      : AppColors.outline,
            width: 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                //    color: isPrimary
                //        ? AppColors.brandMint
                //        : AppColors.brandMint.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: FaIcon(
                icon,
                size: 20.sp,
                //    color: isPrimary ? Colors.white : AppColors.brandMint,
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: AppTextStyles.arabicTitleMedium.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    subtitle,
                    style: AppTextStyles.arabicBodySmall.copyWith(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            FaIcon(
              FontAwesomeIcons.chevronLeft,
              size: 16.sp,
              //   color: AppColors.brandMint,
            ),
          ],
        ),
      ),
    );
  }
}

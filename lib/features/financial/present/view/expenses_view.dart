import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../domain/entities/expenses_res_entity.dart';
import '../blocs/bloc/expenses_bloc.dart';
import '../blocs/financial_bloc/financial_bloc.dart';

class ExpensesView extends StatefulWidget {
  const ExpensesView({super.key});
  static const String routeName = 'expenses';

  @override
  State<ExpensesView> createState() => _ExpensesViewState();
}

class _ExpensesViewState extends State<ExpensesView> {
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 1;
  @override
  void initState() {
    super.initState();
    _loadExpenses();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _loadExpenses() {
    getIt<ExpensesBloc>().add(ExpensesEvent.get(page: _currentPage));
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      getIt<ExpensesBloc>().state.mapOrNull(
        loaded: (loadedState) {
          if (loadedState.meta != null &&
              loadedState.meta!.hasNextPage == true) {
            _currentPage++;
            _loadExpenses();
          }
        },
      );
    }
  }

  Future<void> _onRefresh() async {
    _currentPage = 1;
    _loadExpenses();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.brandBackground,
      appBar: const CustomAppBar(title: 'المصروفات'),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushNamed('create-expense'),
        backgroundColor: AppColors.brandMint,
        child: const FaIcon(FontAwesomeIcons.plus, color: Colors.white),
      ),
      body: BlocConsumer<ExpensesBloc, ExpensesState>(
        bloc: getIt<ExpensesBloc>(),
        listener: (context, state) {
          state.whenOrNull(
            failure: (apiErrorModel) {
              context.showErrorSnackBar(
                title: 'خطأ',
                message:
                    apiErrorModel.message ?? 'حدث خطأ أثناء تحميل البيانات',
              );
            },
          );
        },
        builder: (context, state) {
          return state.when(
            initial: () {
              return const Center(child: CircularProgressIndicator());
            },
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            loaded: (expenses, _, meta, ___, ____) {
              if (expenses == null || expenses.isEmpty) {
                return _buildEmptyState();
              }
              return _buildExpensesList(expenses);
            },
            success: () => const Center(child: CircularProgressIndicator()),
            failure: (_) => _buildErrorState(),
          );
        },
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            FontAwesomeIcons.receipt,
            size: 64.sp,
            color: AppColors.hintOnDark,
          ),
          SizedBox(height: 16.h),
          Text(
            'لا توجد مصروفات',
            style: AppTextStyles.arabicTitleMedium.copyWith(
              color: AppColors.hintOnDark,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'اضغط على + لإضافة مصروف جديد',
            style: AppTextStyles.arabicBodyMedium.copyWith(
              color: AppColors.hintOnDark.withOpacity(0.7),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FaIcon(
            FontAwesomeIcons.triangleExclamation,
            size: 64.sp,
            color: AppColors.warning,
          ),
          SizedBox(height: 16.h),
          Text(
            'فشل تحميل البيانات',
            style: AppTextStyles.arabicTitleMedium.copyWith(
              color: AppColors.hintOnDark,
            ),
          ),
          SizedBox(height: 16.h),
          ElevatedButton.icon(
            onPressed: _onRefresh,
            icon: const FaIcon(FontAwesomeIcons.rotateRight),
            label: const Text('إعادة المحاولة'),
          ),
        ],
      ),
    );
  }

  Widget _buildExpensesList(List<ExpenseEntity> expenses) {
    return RefreshIndicator(
      onRefresh: _onRefresh,
      color: AppColors.brandMint,
      backgroundColor: AppColors.brandBackground,
      child: ListView.builder(
        controller: _scrollController,
        padding: EdgeInsets.all(16.w),
        itemCount: expenses.length,
        itemBuilder: (context, index) {
          final expense = expenses[index];
          return _buildExpenseCard(expense);
        },
      ),
    );
  }

  Widget _buildExpenseCard(ExpenseEntity expense) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      decoration: BoxDecoration(
        color: AppColors.translucentFieldFill,
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.outline, width: 1),
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    expense.expenseType?.name ?? 'مصروف',
                    style: AppTextStyles.arabicTitleMedium.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                _buildStatusBadge(expense.status),
              ],
            ),
            SizedBox(height: 12.h),
            Row(
              children: [
                FaIcon(
                  FontAwesomeIcons.coins,
                  size: 16.sp,
                  color: AppColors.brandMint,
                ),
                SizedBox(width: 8.w),
                Text(
                  '${expense.amount ?? '0'} ${expense.currency ?? ''}',
                  style: AppTextStyles.arabicBodyLarge.copyWith(
                    color: AppColors.brandMint,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            if (expense.notes != null && expense.notes!.isNotEmpty) ...[
              SizedBox(height: 8.h),
              Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.noteSticky,
                    size: 14.sp,
                    color: AppColors.hintOnDark,
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: Text(
                      expense.notes!,
                      style: AppTextStyles.arabicBodyMedium.copyWith(
                        color: AppColors.hintOnDark,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
            if (expense.status?.toLowerCase() == 'rejected' &&
                expense.adminNotes != null &&
                expense.adminNotes!.isNotEmpty) ...[
              SizedBox(height: 8.h),
              Container(
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: AppColors.error.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: AppColors.error.withOpacity(0.3)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.circleExclamation,
                      size: 14.sp,
                      color: AppColors.error,
                    ),
                    SizedBox(width: 8.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'سبب الرفض:',
                            style: AppTextStyles.arabicBodySmall.copyWith(
                              color: AppColors.error,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            expense.adminNotes!,
                            style: AppTextStyles.arabicBodySmall.copyWith(
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
            SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.calendar,
                      size: 12.sp,
                      color: AppColors.hintOnDark.withOpacity(0.7),
                    ),
                    SizedBox(width: 6.w),
                    Text(
                      _formatDate(expense.createdAt),
                      style: AppTextStyles.arabicBodySmall.copyWith(
                        color: AppColors.hintOnDark.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
                if (expense.receiptPath != null)
                  FaIcon(
                    FontAwesomeIcons.paperclip,
                    size: 14.sp,
                    color: AppColors.brandMint,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusBadge(String? status) {
    Color backgroundColor;
    Color textColor;
    String label;

    switch (status?.toLowerCase()) {
      case 'approved':
      case 'مقبول':
        backgroundColor = AppColors.success.withOpacity(0.2);
        textColor = AppColors.success;
        label = 'موافق';
        break;
      case 'pending':
      case 'قيد المراجعة':
        backgroundColor = AppColors.warning.withOpacity(0.2);
        textColor = AppColors.warning;
        label = 'قيد المراجعة';
        break;
      case 'rejected':
      case 'مرفوض':
        backgroundColor = AppColors.error.withOpacity(0.2);
        textColor = AppColors.error;
        label = 'مرفوض';
        break;
      default:
        backgroundColor = AppColors.grey500.withOpacity(0.2);
        textColor = AppColors.grey500;
        label = status ?? 'غير معروف';
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Text(
        label,
        style: AppTextStyles.statusText.copyWith(color: textColor),
      ),
    );
  }

  String _formatDate(String? dateString) {
    if (dateString == null) return 'تاريخ غير معروف';
    try {
      final date = DateTime.parse(dateString);
      return DateFormat('yyyy/MM/dd - HH:mm', 'ar').format(date);
    } catch (e) {
      return dateString;
    }
  }
}

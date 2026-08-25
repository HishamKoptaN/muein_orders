import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../../../core/widgets/custom_scaffold.dart';
import '../../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../../docs/data/mapper/docs_mapper.dart';
import '../../../docs/domain/entities/doc_entity.dart';
import '../bloc/cached_doc/cached_doc_bloc.dart';
import 'widgets/file/add_cached_doc_fields.dart';

class AddCachedDocView extends StatefulWidget {
  const AddCachedDocView({super.key, required this.doc});
  static const String routeName = 'create';
  final DocEntity doc;
  @override
  State<AddCachedDocView> createState() => _AddCachedDocViewState();
}

class _AddCachedDocViewState extends State<AddCachedDocView> {
  @override
  void initState() {
    super.initState();
    getIt<CachedDocBloc>().add(
      CachedDocEvent.updateData(
        createCachedDoc: widget.doc.toCreateCachedDocEntity(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const CustomAppBar(title: 'توثيق'),
      body: BlocConsumer<CachedDocBloc, CachedDocState>(
        bloc: getIt<CachedDocBloc>(),
        listener: (context, state) async {
          await state.whenOrNull(
            success: () {
              context.showSuccessSnackBar(
                title: 'نجاح',
                message: 'تم الحفظ و سيتم رفع بيانات التوثيق في الخلفية',
              );
            },
            failure: (e) {
              context.showErrorSnackBar(title: 'خطأ', message: e);
            },
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            loaded: (state) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: .spaceEvenly,
                  spacing: 8.h,
                  children: [
                    AddDocFieldsWidget(createCachedDoc: state.createCachedDoc),
                    FilledButton.tonal(
                      onPressed:
                          state.formzSubmissionStatus ==
                              FormzSubmissionStatus.success
                          ? () {
                              if (state.formzSubmissionStatus.isSuccess) {
                                getIt<CachedDocBloc>().add(
                                  const CachedDocEvent.cachedDoc(),
                                );
                              }
                            }
                          : null,
                      child: const Text('حفظ'),
                    ),
                    SizedBox(height: 80.h),
                  ],
                ),
              );
            },
            loading: (_) {
              return const Center(child: CircularProgressIndicator());
            },
            orElse: () {
              return const SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/gloabal_widgets/custom_scaffold.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/feedback/app_snackbar.dart';
import '../../../../core/widgets/navigation/custom_app_bar.dart';
import '../../../../l10n/app_localizations.dart';
import '../../../home/domain/entities/order_type_res_entity.dart';
import '../../domain/entities/cached_doc_entity.dart';
import '../../domain/entities/create_cached_doc_entity.dart';
import '../bloc/cached_doc_bloc.dart';
import 'debug/debug_auto_fill_tools.dart';
import 'widgets/add_doc_fields.dart';

class AddCachedDocView extends StatefulWidget {
  const AddCachedDocView({
    super.key,
    required this.docId,
    this.cachedDoc,
    required this.subCategory,
  });
  static const String routeName = 'add-cached-doc';
  final int? docId;
  final CachedDocEntity? cachedDoc;
  final SubCategoryEntity subCategory;
  @override
  State<AddCachedDocView> createState() => _AddCachedDocViewState();
}

class _AddCachedDocViewState extends State<AddCachedDocView> {
  @override
  void initState() {
    super.initState();
    getIt<CachedDocBloc>().add(
      CachedDocEvent.updateData(
        createCachedDoc:
            widget.cachedDoc?.toCreateCachedDocEntity() ??
            const CreateCachedDocEntity(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return CustomScaffold(
      appBar: CustomAppBar(title: t.documentingTheRequest),
      body: BlocConsumer<CachedDocBloc, CachedDocState>(
        listener: (context, state) async {
          await state.whenOrNull(
            success: () {
              context.showSuccessSnackBar(
                title: t.success,
                message: 'تم الحفظ و سيتم رفع بيانات التوثيق في الخلفية',
              );
            },
            failure: (e) {
              context.showErrorSnackBar(title: t.error, message: e);
            },
          );
        },
        builder: (context, state) {
          return state.maybeMap(
            loaded: (state) {
              return DebugAutoFillDoc(
                loadedState: state,
                child: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AddDocFieldWidget(state: state),
                        const SizedBox(height: 15),
                        CustomBtnWidget(
                          key: const Key('button'),
                          text: t.save,
                          backgroundColor:
                              state.createCachedDoc.hasChanged(
                                original: widget.cachedDoc,
                              )
                              ? Colors.green
                              : Colors.grey,
                          onPressed: () {
                            if (state.formzSubmissionStatus.isSuccess) {
                              getIt<CachedDocBloc>().add(
                                CachedDocEvent.cachedDoc(loaded: state),
                              );
                            }
                          },
                          formzSubmissionStatus: state.formzSubmissionStatus,
                        ),
                        const SizedBox(height: 80),
                      ],
                    ),
                  ),
                ),
              );
            },
            loading: (_) => const Center(child: CircularProgressIndicator()),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}

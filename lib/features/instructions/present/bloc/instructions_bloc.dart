import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/instruction_page_entity.dart';

part 'instructions_bloc.freezed.dart';
part 'instructions_event.dart';
part 'instructions_state.dart';

@singleton
class InstructionsBloc extends Bloc<InstructionsEvent, InstructionsState> {
  final int totalPages = 4;
  final List<InstructionPageEntity> pages;
  InstructionsBloc()
    : pages = _getInstructionPages(),
      super(
        InstructionsState.loaded(
          pages: _getInstructionPages(),
          currentPageIndex: 0,
          isLastPage: false,
        ),
      ) {
    on<InstructionsEvent>((event, emit) async {
      await event.whenOrNull(
        pageChanged: (pageIndex) {
          emit(
            InstructionsState.loaded(
              pages: pages,
              currentPageIndex: pageIndex,
              isLastPage: pageIndex == pages.length - 1,
            ),
          );
        },
      );
    });
  }

  static List<InstructionPageEntity> _getInstructionPages() {
    return const [
      InstructionPageEntity(
        titleKey: 'مرحبا',
        descriptionKey: 'اهلا  بانضمامك الي معين',
        imagePath: 'assets/images/onboarding/welcome.png',
      ),
      InstructionPageEntity(
        titleKey: 'تعرف على واجهة التطبيق',
        descriptionKey: 'ستجد هنا المهام والطلبات والتنبيهات والفلاتر',
        imagePath: 'assets/images/onboarding/onboarding2.png',
      ),
      InstructionPageEntity(
        titleKey: 'توثيق مع صور ومقاطع فيديو',
        descriptionKey:
            'تأكد من أن الصور واضحة والعدد الصحيح من النسخ من القرآن قبل الإرسال',
        imagePath: 'assets/images/onboarding/onboarding3.png',
      ),
      InstructionPageEntity(
        titleKey:
            'لا تقم بحذف ملفات التوثيق المحفوظة محلياً المستخدمة لتوثيق طلب حتى يتم الموافقة عليها من قبل الإدارة',
        descriptionKey:
            'لا تقم بحذف ملفات التوثيق المحفوظة محلياً المستخدمة لتوثيق طلب حتى يتم الموافقة عليها من قبل الإدارة',
        imagePath: 'assets/images/onboarding/onboarding4.png',
      ),
    ];
  }
}

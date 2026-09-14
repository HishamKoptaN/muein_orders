import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/instruction_page_entity.dart';

part 'instructions_bloc.freezed.dart';
part 'instructions_event.dart';
part 'instructions_state.dart';

@singleton
class InstructionsBloc extends Bloc<InstructionsEvent, InstructionsState> {
  final List<InstructionPageEntity> pages;
  InstructionsBloc()
    : pages = _getInstructionPages(),
      super(
        .loaded(
          pages: _getInstructionPages(),
          currentPageIndex: 0,
          isLastPage: false,
        ),
      ) {
    on<InstructionsEvent>((event, emit) async {
      await event.whenOrNull(
        pageChanged: (pageIndex) {
          emit(
            .loaded(
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
        title: 'مرحبا',
        description: 'اهلا  بانضمامك الي معين',
        imagePath: 'assets/images/onboarding/welcome.png',
      ),
      InstructionPageEntity(
        title: 'تعرف على واجهة التطبيق',
        description: 'ستجد هنا المهام والطلبات والتنبيهات والفلاتر',
        imagePath: 'assets/images/onboarding/onboarding2.png',
      ),
      InstructionPageEntity(
        title: 'توثيق مع صور ومقاطع فيديو',
        description:
            'تأكد من أن الصور واضحة والعدد الصحيح من النسخ من القرآن قبل الإرسال',
        imagePath: 'assets/images/onboarding/onboarding3.png',
      ),
      InstructionPageEntity(
        title: 'ملفات التوثيق',
        description:
            'لا تقم بحذف ملفات التوثيق المحفوظة محلياً المستخدمة لتوثيق طلب حتى يتم الموافقة عليها من قبل الإدارة',
        imagePath: 'assets/images/onboarding/onboarding4.png',
      ),
    ];
  }
}

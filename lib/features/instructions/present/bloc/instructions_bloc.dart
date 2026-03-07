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
    on<InstructionsEvent>(
      (event, emit) async {
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
      },
    );
  }

  static List<InstructionPageEntity> _getInstructionPages() {
    return const [
      InstructionPageEntity(
        titleKey: 'welcome',
        descriptionKey: 'we_are_happy_to_have_you_join_our_store',
        imagePath: 'assets/images/onboarding/welcome.png',
      ),
      InstructionPageEntity(
        titleKey: 'get_to_know_the_application_interface',
        descriptionKey: 'here_you_will_find_tasks_requests_alerts_and_filters',
        imagePath: 'assets/images/onboarding/onboarding2.png',
      ),
      InstructionPageEntity(
        titleKey: 'documentation_with_photos_and_videos',
        descriptionKey: 'make_sure_the_images_are_clear_and_correct',
        imagePath: 'assets/images/onboarding/onboarding3.png',
      ),
      InstructionPageEntity(
        titleKey: 'doNotDeleteTheDocumentationFiles',
        descriptionKey:
            'doNotDeleteTheLocallyStoredPhotoAndVideoFilesUsedToDocumentAnApplicationUntilTheyAreApprovedByTheAdministration',
        imagePath: 'assets/images/onboarding/onboarding4.png',
      ),
    ];
  }
}

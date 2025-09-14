import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:mubin_orders/features/onboarding/domain/repositories/onboarding_repository.dart';
import 'onboarding_event.dart';
import 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final OnboardingRepository repository;
  
  static List<Map<String, String>> get onboardingPages => [
    {
      'title': 'مرحباً بك في تطبيق مبين',
      'description': 'منصة متكاملة لإدارة طلباتك وتتبعها بكل سهولة',
      'image': 'assets/images/onboarding_1.png',
    },
    {
      'title': 'تتبع طلباتك',
      'description': 'تابع حالة طلباتك خطوة بخطوة وكن على اطلاع دائم',
      'image': 'assets/images/onboarding_2.png',
    },
    {
      'title': 'إدارة المستندات',
      'description': 'احفظ وصولاتك وفواتيرك في مكان آمن وسهل الوصول',
      'image': 'assets/images/onboarding_3.png',
    },
  ];

  OnboardingBloc({required this.repository}) : super(OnboardingInitial()) {
    on<CheckOnboardingStatus>(_onCheckOnboardingStatus);
    on<CompleteOnboarding>(_onCompleteOnboarding);
  }

  Future<void> _onCheckOnboardingStatus(
    CheckOnboardingStatus event,
    Emitter<OnboardingState> emit,
  ) async {
    try {
      emit(OnboardingLoading());
      final isCompleted = await repository.isOnboardingCompleted();
      
      if (isCompleted) {
        emit(OnboardingCompleted());
      } else {
        emit(OnboardingNotCompleted(
          pages: onboardingPages,
          currentPageIndex: 0,
        ));
      }
    } catch (e) {
      emit(OnboardingError('حدث خطأ أثناء تحميل شاشات التعريف'));
    }
  }

  Future<void> _onCompleteOnboarding(
    CompleteOnboarding event,
    Emitter<OnboardingState> emit,
  ) async {
    try {
      await repository.completeOnboarding();
      emit(OnboardingCompleted());
    } catch (e) {
      emit(OnboardingError('حدث خطأ أثناء حفظ تفضيلاتك'));
    }
  }
}

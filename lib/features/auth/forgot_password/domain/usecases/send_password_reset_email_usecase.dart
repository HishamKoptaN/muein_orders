import 'package:injectable/injectable.dart';

import '../repo/forgot_password_repository.dart';

@injectable
class SendPasswordResetEmailUseCase {
  final ForgotPasswordRepository repository;
  SendPasswordResetEmailUseCase(this.repository);

  Future<void> call({required String email}) async {
    await repository.sendPasswordResetEmail(email: email);
  }
}

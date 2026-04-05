import 'package:flutter/material.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/widgets/translated_text.dart';
import '../../auth/auth/present/bloc/auth_bloc.dart';

void showLogoutBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) {
      return Container(
        height: 204,
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 16),
        child: Column(
          children: [
            Container(
              width: 36,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.circular(100),
              ),
            ),
            const SizedBox(height: 24),
            const TrText(
              'تسجيل الخروج من معين',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF003A46),
              ),
            ),
            const SizedBox(height: 8),
            const TrText(
              'هل تريد تسجيل الخروج ؟',
              style: TextStyle(color: Colors.grey),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      getIt<AuthBloc>().add(const AuthEvent.signedOut());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF83BEA8),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const TrText(
                      'نعم',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.pop(context),
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xFF83BEA8)),
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                    child: const TrText(
                      'لا',
                      style: TextStyle(color: Color(0xFF83BEA8)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

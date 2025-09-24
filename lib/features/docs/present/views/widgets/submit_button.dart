import 'package:flutter/material.dart';
import 'package:formz/formz.dart';

import '../../../../../core/widgets/custom_circular_progress.dart';

class SubmitButton extends StatelessWidget {
  final FormzSubmissionStatus formzSubmissionStatus;
  final VoidCallback onPressed;
  final String buttonText;

  const SubmitButton({
    super.key,
    required this.formzSubmissionStatus,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: formzSubmissionStatus.isSuccess ? onPressed : null,
      style: ButtonStyle(
        backgroundColor: formzSubmissionStatus.isSuccess
            ? null
            : WidgetStateProperty.all(Colors.grey),
      ),
      child: formzSubmissionStatus.isInProgress
          ? const CustomCircularProgress()
          : Text(buttonText),
    );
  }
}

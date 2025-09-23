import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_circular_progress.dart';

class SubmitButton extends StatelessWidget {
  final bool isSubmitting;
  final VoidCallback onPressed;
  final String buttonText;

  const SubmitButton({
    super.key,
    required this.isSubmitting,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isSubmitting ? null : onPressed,
      style: ButtonStyle(
        backgroundColor:
            isSubmitting ? WidgetStateProperty.all(Colors.grey) : null,
      ),
      child: isSubmitting ? const CustomCircularProgress() : Text(buttonText),
    );
  }
}
                     
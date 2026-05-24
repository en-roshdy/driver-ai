import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../theme/app_values.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isLoading;
  final Color? color;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: color != null ? ElevatedButton.styleFrom(backgroundColor: color) : null,
      child: isLoading
          ? const SizedBox(
              height: AppSize.s20,
              width: AppSize.s20,
              child: CircularProgressIndicator(color: AppColors.white, strokeWidth: AppSize.s2),
            )
          : Text(text),
    );
  }
}

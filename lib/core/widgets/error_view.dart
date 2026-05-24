import 'package:flutter/material.dart';
import '../../../../core/di/injection.dart';
import '../../l10n/app_localizations.dart';
import '../theme/app_theme.dart';
import '../theme/app_values.dart';
import '../theme/app_text_styles.dart';

class ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const ErrorView({super.key, required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: AppSize.s60, color: AppColors.red),
            const SizedBox(height: AppSize.s16),
            Text(
              message,
              textAlign: TextAlign.center,
              style: AppTextStyles.regular16,
            ),
            const SizedBox(height: AppSize.s24),
            ElevatedButton(
              onPressed: onRetry,
              child: Text(l10n.retry),
            ),
          ],
        ),
      ),
    );
  }
}

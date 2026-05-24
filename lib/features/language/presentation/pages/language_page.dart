import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_values.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/navigation/app_router.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_selection_card.dart';
import '../../../../l10n/app_localizations.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  String _selectedLanguage = 'ar';

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
          child: Column(
            children: [
              const Spacer(),
              // Language Illustration
              SvgPicture.asset(
                AppAssets.languageImg,
                height: AppSize.s231,
                width: AppSize.s231,
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.language,
                  size: AppSize.s100,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: AppSize.s40),
              
              // Title
              Text(
                l10n.select_language,
                style: AppTextStyles.bold20,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSize.s12),
              
              // Subtitle
              Text(
                l10n.please_select_language,
                style: AppTextStyles.greyRegular16,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSize.s40),
              
              // Language Options
              CustomSelectionCard(
                title: l10n.english,
                trailing: SvgPicture.asset(
                  AppAssets.flagEn,
                  width: AppSize.s24,
                  height: AppSize.s24,
                ),
                isSelected: _selectedLanguage == 'en',
                onTap: () => setState(() => _selectedLanguage = 'en'),
              ),
              const SizedBox(height: AppSize.s16),
              CustomSelectionCard(
                title: l10n.arabic,
                trailing: SvgPicture.asset(
                  AppAssets.flagAr,
                  width: AppSize.s24,
                  height: AppSize.s24,
                ),
                isSelected: _selectedLanguage == 'ar',
                onTap: () => setState(() => _selectedLanguage = 'ar'),
              ),
              
              const Spacer(),
              
              // Selection Button
              CustomButton(
                text: l10n.choose_language,
                onPressed: () {
                  // Save language preference and navigate
                  context.go(AppRouter.login);
                },
              ),
              const SizedBox(height: AppSize.s24),
            ],
          ),
        ),
      ),
    );
  }
}

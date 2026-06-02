import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
import '../bloc/language_bloc.dart';

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
      body: Stack(
        children: [
          // Decorative Background Circle
          Positioned(
            left: 111,
            top: 169,
            child: Container(
              width: 152,
              height: 152,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.30),
                    const Color(0x3377736F),
                    const Color(0x4CF9F9F9),
                  ],
                ),
              ),
            ),
          ),
          
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                child: SizedBox(
                  width: AppSize.s343,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: AppPadding.p40),
                      
                      // Illustration
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
                      const SizedBox(height: AppSize.s32),
                      
                      // Title & Subtitle
                      Column(
                        children: [
                          Text(
                            l10n.select_language,
                            style: AppTextStyles.bold20.copyWith(
                              color: AppColors.neutral700,
                              height: 1.40,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: AppSize.s10),
                          SizedBox(
                            width: 273,
                            child: Text(
                              l10n.please_select_language,
                              style: AppTextStyles.medium14.copyWith(
                                color: AppColors.neutral700,
                                height: 1.43,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSize.s32),
                      
                      // Language Options
                      Column(
                        children: [
                          CustomSelectionCard(
                            title: l10n.english,
                            trailing: SvgPicture.asset(
                              AppAssets.flagEn,
                              width: AppSize.s24,
                              height: AppSize.s24,
                            ),
                            isSelected: _selectedLanguage == 'en',
                            onTap: () => setState(() => _selectedLanguage = 'en'),
                            textStyle: AppTextStyles.bold14.copyWith(
                              color: _selectedLanguage == 'en' 
                                  ? AppColors.neutral700 
                                  : AppColors.neutral500,
                            ),
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
                            textStyle: AppTextStyles.bold14.copyWith(
                              color: _selectedLanguage == 'ar' 
                                  ? AppColors.neutral700 
                                  : AppColors.neutral500,
                            ),
                          ),
                          const SizedBox(height: AppSize.s32),
                          
                          // Selection Button
                          CustomButton(
                            text: l10n.choose_language,
                            onPressed: () {
                              context.read<LanguageBloc>().add(
                                    ChangeLanguage(Locale(_selectedLanguage)),
                                  );
                              context.go(AppRouter.login);
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: AppPadding.p40),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

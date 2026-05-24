import 'package:flutter/material.dart';
import 'app_values.dart';

class AppColors {
  // Primary
  static const primary25 = Color(0xFFFDFCFB);
  static const primary50 = Color(0xFFF9F2EA);
  static const primary100 = Color(0xFFF3E5D3);
  static const primary200 = Color(0xFFE7CEA9);
  static const primary300 = Color(0xFFDAB780);
  static const primary400 = Color(0xFFCD9F56);
  static const primary500 = Color(0xFFBE8D5A);
  static const primary600 = Color(0xFF9D754A);
  static const primary700 = Color(0xFF7C5C3A);
  static const primary800 = Color(0xFF5B442A);
  static const primary900 = Color(0xFF3A2B1B);

  // Neutral
  static const neutralWhite = Color(0xFFFFFFFF);
  static const neutral25 = Color(0xFFFCFCFD);
  static const neutral50 = Color(0xFFF9FAFB);
  static const neutral100 = Color(0xFFF2F4F7);
  static const neutral200 = Color(0xFFEAECF0);
  static const neutral300 = Color(0xFFD0D5DD);
  static const neutral400 = Color(0xFF98A2B3);
  static const neutral500 = Color(0xFF667085);
  static const neutral600 = Color(0xFF475467);
  static const neutral700 = Color(0xFF344054);
  static const neutral800 = Color(0xFF1D2939);
  static const neutral900 = Color(0xFF101828);

  // Error
  static const error25 = Color(0xFFFFF5F5);
  static const error50 = Color(0xFFFEF3F2);
  static const error100 = Color(0xFFFEE4E2);
  static const error200 = Color(0xFFFECDCA);
  static const error300 = Color(0xFFFDA29B);
  static const error400 = Color(0xFFF97066);
  static const error500 = Color(0xFFD92D20);
  static const error600 = Color(0xFFB42318);
  static const error700 = Color(0xFF912018);
  static const error800 = Color(0xFF7A2714);

  // Warning
  static const warning25 = Color(0xFFFFFCF5);
  static const warning50 = Color(0xFFFFFAEB);
  static const warning100 = Color(0xFFFEF0C7);
  static const warning200 = Color(0xFFFEDF89);
  static const warning300 = Color(0xFFFEC84B);
  static const warning400 = Color(0xFFFDB022);
  static const warning500 = Color(0xFFF79009);
  static const warning600 = Color(0xFFDC6803);
  static const warning700 = Color(0xFFB54708);
  static const warning800 = Color(0xFF93370D);

  // Success
  static const success25 = Color(0xFFF6FEF9);
  static const success50 = Color(0xFFECFDF3);
  static const success100 = Color(0xFFD1FADF);
  static const success200 = Color(0xFFA6F4C5);
  static const success300 = Color(0xFF6CE9A6);
  static const success400 = Color(0xFF32D583);
  static const success500 = Color(0xFF12B76A);
  static const success600 = Color(0xFF039855);
  static const success700 = Color(0xFF027A48);
  static const success800 = Color(0xFF05603A);

  // Info
  static const info25 = Color(0xFFF5FBFF);
  static const info50 = Color(0xFFF0F9FF);
  static const info100 = Color(0xFFE0F2FE);
  static const info200 = Color(0xFFB9E6FE);
  static const info300 = Color(0xFF7CD4FD);
  static const info400 = Color(0xFF36BFFA);
  static const info500 = Color(0xFF0BA5EC);
  static const info600 = Color(0xFF0086C9);
  static const info700 = Color(0xFF026AA2);
  static const info800 = Color(0xFF065986);

  // Semantic Aliases
  static const primary = primary500;
  static const secondary = primary100;
  static const error = error500;
  static const success = success500;
  static const warning = warning500;
  static const info = info500;
  
  static const background = neutralWhite;
  static const surface = neutralWhite;
  static const black = neutral900;
  static const white = neutralWhite;
  static const greyText = neutral500;
  
  // Legacy Aliases (to avoid breaking current code)
  static const red = error500;
  static const blue = info500;
  static const grey100 = neutral100;
  static const grey300 = neutral300;
  static const grey600 = neutral600;
}

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'CustomFont',
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: AppColors.surface,
        background: AppColors.background,
        error: AppColors.error,
      ),
      scaffoldBackgroundColor: AppColors.background,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: AppColors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(color: AppColors.black),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.greyText,
        backgroundColor: AppColors.background,
        type: BottomNavigationBarType.fixed,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.r12),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.neutral50,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.r12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.r12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppRadius.r12),
          borderSide: const BorderSide(color: AppColors.primary),
        ),
      ),
    );
  }
}

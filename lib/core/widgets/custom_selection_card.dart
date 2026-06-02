import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../theme/app_values.dart';
import '../theme/app_text_styles.dart';

class CustomSelectionCard extends StatelessWidget {
  final String title;
  final Widget? trailing;
  final bool isSelected;
  final VoidCallback onTap;
  final double? height;
  final double? width;
  final double? fontSize;
  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;

  const CustomSelectionCard({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
    this.trailing,
    this.height,
    this.width,
    this.fontSize,
    this.textStyle,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final defaultStyle = isSelected
        ? AppTextStyles.medium12.copyWith(color: AppColors.primary)
        : AppTextStyles.medium12.copyWith(color: AppColors.neutral300);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? AppSize.s48,
        width: width,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: AppPadding.p12),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary50 : Colors.white.withOpacity(0.06),
          borderRadius: BorderRadius.circular(AppRadius.r12),
          border: Border.all(
            color: isSelected ? AppColors.primary500 : AppColors.neutral100,
            width: AppSize.s1,
          ),
        ),
        child: Row(
          children: [
            // Radio-like indicator
            Container(
              height: AppSize.s20,
              width: AppSize.s20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? AppColors.primary : AppColors.neutral200,
                  width: AppSize.s2,
                ),
              ),
              child: isSelected
                  ? Center(
                      child: Container(
                        height: AppSize.s10,
                        width: AppSize.s10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primary,
                        ),
                      ),
                    )
                  : null,
            ),
            const SizedBox(width: AppSize.s12),
            
            // Title
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.start,
                style: (textStyle ?? defaultStyle).copyWith(
                  fontSize: fontSize,
                ),
              ),
            ),
            
            if (trailing != null) ...[
              const SizedBox(width: AppSize.s8),
              trailing!,
            ],
          ],
        ),
      ),
    );
  }
}

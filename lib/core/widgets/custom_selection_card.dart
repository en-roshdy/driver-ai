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
  final EdgeInsetsGeometry? padding;

  const CustomSelectionCard({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
    this.trailing,
    this.height,
    this.width,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? AppSize.s48,
        width: width,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: AppPadding.p12),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primary50 : AppColors.white,
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
                  color: isSelected ? AppColors.primary : AppColors.neutral300,
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
                textAlign: TextAlign.center,
                style: isSelected
                    ? AppTextStyles.medium12.copyWith(color: AppColors.primary)
                    : AppTextStyles.medium12.copyWith(color: AppColors.neutral400),
              ),
            ),
            
            if (trailing != null) ...[
              const SizedBox(width: AppSize.s4),
              trailing!,
            ],
          ],
        ),
      ),
    );
  }
}

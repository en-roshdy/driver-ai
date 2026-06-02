import 'package:flutter/material.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_values.dart';
import '../../domain/entities/home_data.dart';

class StatCard extends StatelessWidget {
  final Statistic statistic;

  const StatCard({super.key, required this.statistic});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 96,
      // padding: const EdgeInsets.only(
      //   top: AppPadding.p32,
      //   left: AppPadding.p24,
      //   right: AppPadding.p24,
      //   bottom: AppPadding.p16,
      // ),
      decoration: BoxDecoration(
        color: AppColors.neutralWhite,
        borderRadius: BorderRadius.circular(AppRadius.r8),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14667085),
            blurRadius: 40,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: AppSize.s12), // Extra space for top icon
          Text(
            statistic.name,
            textAlign: TextAlign.center,
            style: AppTextStyles.regular14.copyWith(
              color: AppColors.neutral400,
            ),
          ),
          const SizedBox(height: AppSize.s8),
          Text(
            (statistic.isDouble ?? false)
                ? statistic.value.toStringAsFixed(2)
                : statistic.value.toInt().toString(),
            textAlign: TextAlign.center,
            style: AppTextStyles.bold16.copyWith(
              color: AppColors.neutral900,
            ),
          ),
        ],
      ),
    );
  }
}

class StatCardWithIcon extends StatelessWidget {
  final Statistic statistic;

  const StatCardWithIcon({super.key, required this.statistic});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        StatCard(statistic: statistic),
        Positioned(
          top: -25,
          left: 0,
          right: 0,
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(AppPadding.p8),
              decoration: BoxDecoration(
                color: AppColors.neutralWhite,
                shape: BoxShape.circle,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x146F6F6F),
                    blurRadius: 10,
                    offset: Offset(0, 4),
                  )
                ],
              ),
              child: statistic.image.isNotEmpty
                  ? Image.network(
                      statistic.image,
                      width: 28,
                      height: 28,
                      errorBuilder: (_, __, ___) => const Icon(Icons.bar_chart, color: AppColors.primary, size: 28),
                    )
                  : const Icon(Icons.bar_chart, color: AppColors.primary, size: 28),
            ),
          ),
        ),
      ],
    );
  }
}

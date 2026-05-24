import 'package:flutter/material.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_values.dart';
import '../../domain/entities/home_data.dart';

class StatCard extends StatelessWidget {
  final Statistic statistic;

  const StatCard({super.key, required this.statistic});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadius.r12)),
      child: Padding(
        padding: const EdgeInsets.all(AppPadding.p12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (statistic.image.isNotEmpty)
              Image.network(statistic.image, height: AppSize.s30, width: AppSize.s30, errorBuilder: (_, __, ___) => const Icon(Icons.show_chart)),
            const SizedBox(height: AppSize.s8),
            Text(
              statistic.name,
              style: TextStyle(color: AppColors.grey600, fontSize: 13),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: AppSize.s4),
            Text(
              statistic.isDouble ? statistic.value.toStringAsFixed(2) : statistic.value.toInt().toString(),
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

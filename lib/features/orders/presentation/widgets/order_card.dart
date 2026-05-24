import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_values.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/entities/order.dart';

class OrderCard extends StatelessWidget {
  final Order order;

  const OrderCard({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: AppPadding.p16, vertical: AppPadding.p8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadius.r12)),
      elevation: 2,
      child: ListTile(
        contentPadding: const EdgeInsets.all(AppPadding.p16),
        title: Text(
          '${l10n.orders}: ${order.orderNumber}',
          style: AppTextStyles.bold16,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppSize.s8),
            Text('${l10n.total}: ${order.totalFullSentence ?? 'N/A'}'),
            const SizedBox(height: AppSize.s4),
            Row(
              children: [
                Icon(Icons.location_on_outlined, size: AppSize.s16, color: AppColors.grey600),
                const SizedBox(width: AppSize.s4),
                Expanded(
                  child: Text(
                    order.cityName ?? 'Unknown City',
                    style: AppTextStyles.greyRegular13.copyWith(color: AppColors.grey600),
                  ),
                ),
              ],
            ),
          ],
        ),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p12, vertical: AppPadding.p6),
          decoration: BoxDecoration(
            color: _getStatusColor(order.statusColor).withOpacity(0.1),
            borderRadius: BorderRadius.circular(AppRadius.r20),
          ),
          child: Text(
            order.statusCustomName ?? 'New',
            style: AppTextStyles.whiteBold12.copyWith(
              color: _getStatusColor(order.statusColor),
            ),
          ),
        ),
        onTap: () {
          context.push('/order-details/${order.id}');
        },
      ),
    );
  }

  Color _getStatusColor(String? colorStr) {
    if (colorStr == null || colorStr.isEmpty) return AppColors.blue;
    try {
      return Color(int.parse(colorStr.replaceFirst('#', '0xff')));
    } catch (_) {
      return AppColors.blue;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_values.dart';
import '../../../../l10n/app_localizations.dart';
import '../../domain/entities/order.dart';

class OrderCard extends StatelessWidget {
  final Order order;
  final VoidCallback? onAccept;
  final bool showAcceptButton;

  const OrderCard({
    super.key,
    required this.order,
    this.onAccept,
    this.showAcceptButton = true,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      width: 310,
      margin: const EdgeInsets.symmetric(horizontal: AppPadding.p8),
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8, vertical: AppPadding.p12),
      decoration: BoxDecoration(
        color: AppColors.neutralWhite,
        borderRadius: BorderRadius.circular(AppRadius.r12),
        border: Border.all(color: AppColors.neutral50, width: 1),
        boxShadow: const [
          BoxShadow(
            color: Color(0x28C6C6C6),
            blurRadius: 4,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header: Status and Order Number
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tag
              Container(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p8, vertical: AppPadding.p4),
                decoration: BoxDecoration(
                  color: AppColors.warning50,
                  borderRadius: BorderRadius.circular(AppRadius.r8),
                ),
                child: Text(
                  order.statusCustomName ?? l10n.new_tag,
                  style: AppTextStyles.medium12.copyWith(color: AppColors.warning500),
                ),
              ),
              // Order Number and Type
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${order.orderNumber}#',
                    style: AppTextStyles.bold16.copyWith(color: AppColors.neutral900),
                  ),
                  const SizedBox(height: AppSize.s4),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: l10n.order_type,
                          style: AppTextStyles.regular12.copyWith(color: AppColors.neutral400),
                        ),
                        const TextSpan(text: ' '),
                        TextSpan(
                          text: order.statusName ?? l10n.delivery,
                          style: AppTextStyles.regular12.copyWith(color: AppColors.neutral600),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ],
          ),
          const Divider(color: AppColors.neutral50, height: AppSize.s16),
          // Address
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(Icons.location_on_outlined, size: AppSize.s16, color: AppColors.neutral400),
              const SizedBox(width: AppSize.s4),
              Expanded(
                child: Text(
                  order.mapAddress ?? '',
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.regular12.copyWith(color: AppColors.neutral400),
                ),
              ),
            ],
          ),
          const Divider(color: AppColors.neutral50, height: AppSize.s16),
          // Delivery Date and Time
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildDateTimeInfo(l10n.delivery_date, order.date ?? ''),
              const SizedBox(width: AppSize.s24),
              _buildDateTimeInfo(l10n.delivery_time, order.time ?? ''),
            ],
          ),
          if (showAcceptButton && (order.canAccept ?? false)) ...[
            const SizedBox(height: AppSize.s12),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: onAccept,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary500,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppRadius.r12)),
                ),
                child: Text(
                  l10n.accept_order,
                  style: AppTextStyles.medium16.copyWith(color: AppColors.neutralWhite),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildDateTimeInfo(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppTextStyles.regular12.copyWith(color: AppColors.neutral400),
        ),
        const SizedBox(height: AppSize.s2),
        Text(
          value,
          style: AppTextStyles.regular14.copyWith(color: AppColors.neutral800),
        ),
      ],
    );
  }
}

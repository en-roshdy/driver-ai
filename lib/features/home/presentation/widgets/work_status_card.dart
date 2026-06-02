import 'package:flutter/material.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_values.dart';
import '../../../../l10n/app_localizations.dart';

class WorkStatusCard extends StatelessWidget {
  final bool isReceivingOrders;
  final Function(bool) onToggle;

  const WorkStatusCard({
    super.key,
    required this.isReceivingOrders,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 4,
        children: [
          Container(
            width: double.infinity,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Toggle Switch Implementation based on Figma padding/logic

                // Status Text
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: l10n.work_status,
                        style: const TextStyle(
                          color: Color(0xFF353030), // Colors-Neutral-700
                          fontSize: 14,
                          // fontFamily: 'IBM Plex Sans Arabic',
                          fontWeight: FontWeight.w500,
                          height: 1.43,
                        ),
                      ),
                      TextSpan(
                        text: isReceivingOrders
                            ? l10n.orders_receiving_open
                            : l10n.orders_receiving_closed,
                        style: TextStyle(
                          color: isReceivingOrders
                              ? const Color(0xFF17B26A) // Colors-Success-500
                              : const Color(0xFFF04438), // Colors-Error-500
                          fontSize: 14,
                          // fontFamily: 'IBM Plex Sans Arabic',
                          fontWeight: FontWeight.w500,
                          height: 1.43,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.start,
                ),
                GestureDetector(
                  onTap: () => onToggle(!isReceivingOrders),
                  child: Container(
                    padding: EdgeInsetsDirectional.only(
                      top: 0.64,
                      bottom: 0.64,
                      start: isReceivingOrders ? 0.64 : 13.47,
                      end: isReceivingOrders ? 13.47 : 0.64,
                    ),
                    decoration: ShapeDecoration(
                      color: isReceivingOrders
                          ? const Color(0xFF17B26A) // Colors-Success-500
                          : const Color(0xFF6B6060), // Colors-Neutral-500
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(63.51),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: isReceivingOrders
                          ? MainAxisAlignment.start
                          : MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 6.42,
                      children: [
                        Container(
                          width: 14.89,
                          height: 14.89,
                          decoration: const ShapeDecoration(
                            color: Colors.white,
                            shape: CircleBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (!isReceivingOrders)
            Text(
              l10n.status_change_warning,
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: Color(0xFF6B6060), // Colors-Neutral-500
                fontSize: 14,
                // fontFamily: 'IBM Plex Sans Arabic',
                fontWeight: FontWeight.w500,
                height: 1.43,
              ),
            ),
        ],
      ),
    );
  }
}

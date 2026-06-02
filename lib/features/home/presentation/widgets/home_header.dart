import 'package:flutter/material.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_values.dart';

class HomeHeader extends StatelessWidget {
  final String userName;
  final String userImage;
  final int notificationCount;
  final VoidCallback onNotificationTap;
  final VoidCallback onProfileTap;

  const HomeHeader({
    super.key,
    required this.userName,
    required this.userImage,
    this.notificationCount = 0,
    required this.onNotificationTap,
    required this.onProfileTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppPadding.p16),
      decoration: const BoxDecoration(
        color: AppColors.neutralWhite,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(AppRadius.r8),
          bottomRight: Radius.circular(AppRadius.r8),
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            // User Info
            InkWell(
              onTap: onProfileTap,
              child: Row(
                children: [

                  Container(
                    width: AppSize.s40,
                    height: AppSize.s40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color(0xFFF2F1F1), width: 1),
                      image: DecorationImage(
                        image: NetworkImage(userImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(width: AppSize.s10),

                  Text(
                    userName,
                    style: AppTextStyles.medium14.copyWith(color: AppColors.neutral900),
                  ),

                ],
              ),
            ),
            // Notification Icon
            InkWell(
              onTap: onNotificationTap,
              child: Container(
                padding: const EdgeInsets.all(AppPadding.p8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(AppRadius.r8),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const Icon(Icons.notifications_none, color: AppColors.neutral900, size: AppSize.s24),
                    if (notificationCount > 0)
                      PositionedDirectional(
                        end: -4,
                        top: -4,
                        child: Container(
                          padding: const EdgeInsets.all(AppPadding.p4),
                          decoration: BoxDecoration(
                            color: AppColors.error500,
                            shape: BoxShape.circle,
                            border: Border.all(color: AppColors.neutralWhite, width: 1.5),
                          ),
                          constraints: const BoxConstraints(
                            minWidth: 16,
                            minHeight: 16,
                          ),
                          child: Text(
                            notificationCount.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: AppColors.neutralWhite,
                              fontSize: 8,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

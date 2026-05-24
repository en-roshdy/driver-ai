import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/di/injection.dart';

import '../../../../core/navigation/app_router.dart';
import '../../../../core/services/local_storage_service.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_values.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../l10n/app_localizations.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = getIt<LocalStorageService>().getUser();
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.profile)),
      body: ListView(
        padding: const EdgeInsets.all(AppPadding.p16),
        children: [
          const Center(
            child: CircleAvatar(
              radius: AppSize.s50,
              child: Icon(Icons.person, size: AppSize.s50),
            ),
          ),
          const SizedBox(height: AppSize.s20),
          if (user != null) ...[
            Center(
              child: Text(
                user.name,
                style: AppTextStyles.bold22,
              ),
            ),
            Center(
              child: Text(
                user.phone,
                style: AppTextStyles.greyRegular16,
              ),
            ),
          ],
          const SizedBox(height: AppSize.s30),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.wallet_outlined),
            title: Text(l10n.my_wallet),
            trailing: const Icon(Icons.arrow_forward_ios, size: AppSize.s16),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.notifications_outlined),
            title: Text(l10n.notifications),
            trailing: const Icon(Icons.arrow_forward_ios, size: AppSize.s16),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.language_outlined),
            title: Text(l10n.language),
            trailing: const Icon(Icons.arrow_forward_ios, size: AppSize.s16),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: Text(l10n.help),
            trailing: const Icon(Icons.arrow_forward_ios, size: AppSize.s16),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout, color: AppColors.red),
            title: Text(l10n.logout, style: const TextStyle(color: AppColors.red)),
            onTap: () {
              // Handle logout logic
              context.go(AppRouter.login);
            },
          ),
        ],
      ),
    );
  }
}

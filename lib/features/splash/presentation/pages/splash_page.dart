import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_values.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/navigation/app_router.dart';
import '../../../../core/services/local_storage_service.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _checkAuth();
  }

  Future<void> _checkAuth() async {
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;

    final token = getIt<LocalStorageService>().getToken();
    if (token != null) {
      context.go(AppRouter.main);
    } else {
      context.go(AppRouter.language);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralWhite,
      body: Stack(
        children: [
          // Background Vector (Topographic pattern)
          Positioned.fill(
            child: SvgPicture.asset(
              AppAssets.splashBg,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,

              // colorFilter: ColorFilter.mode(
              //   AppColors.neutral100.withOpacity(0.5),
              //   BlendMode.srcIn,
              // ),
            ),
          ),
          
          // Center Logo
          Center(
            child: Image.asset(
              AppAssets.splashLogo,
              width: 112, // Adjusted based on visual proportion
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) => const Icon(
                Icons.flutter_dash,
                size: 100,
                color: AppColors.primary,
              ),
            ),
          ),

          // Bottom Content (Vision 2030)
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: AppPadding.p24),
              child: SvgPicture.asset(
                AppAssets.vision2030,
                width: 134, // Adjusted based on visual proportion
                errorBuilder: (context, error, stackTrace) => const SizedBox(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

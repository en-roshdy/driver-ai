import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
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
      context.go(AppRouter.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background Vector
          Positioned.fill(
            child: SvgPicture.asset(
              'assets/icons/splash_bg.svg',
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                const Color(0xFFBE8D5A).withOpacity(0.05),
                BlendMode.srcIn,
              ),
            ),
          ),
          
          // Center Logo
          Center(
            child: Image.asset(
              'assets/images/splash_logo.png',
              width: 200,
              errorBuilder: (context, error, stackTrace) => const FlutterLogo(size: 100),
            ),
          ),

          // Bottom Content
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/icons/vision_2030.svg',
                    width: 150,
                    errorBuilder: (context, error, stackTrace) => const SizedBox(),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'v 1.0.4',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFBE8D5A),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

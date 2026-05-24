import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/navigation/app_router.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_values.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/custom_selection_card.dart';
import '../../../../l10n/app_localizations.dart';
import '../bloc/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _phoneController = TextEditingController();
  String _verificationMethod = 'whatsapp';

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFEF7F0),
              AppColors.white,
            ],
            stops: [0.0, 0.2],
          ),
        ),
        child: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text(state.message), backgroundColor: AppColors.red),
              );
            } else if (state is OtpSent) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(l10n.otp_sent)),
              );
              // Simulate OTP verification for demo purposes
              context.read<AuthBloc>().add(OtpVerified(state.phone, '1234'));
            } else if (state is AuthAuthenticated) {
              context.go(AppRouter.main);
            }
          },
          builder: (context, state) {
            return Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
                child: SizedBox(
                  width: AppSize.s343,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: AppSize.s60),
                      
                      // Header Section
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Logo
                          SizedBox(
                            width: AppSize.s115,
                            child: Image.asset(
                              AppAssets.splashLogo,
                              height: AppSize.s100,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.logo_dev, size: AppSize.s100),
                            ),
                          ),
                          const SizedBox(height: AppSize.s24),

                          // Title
                          Text(
                            l10n.login,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.bold24.copyWith(color: AppColors.black),
                          ),
                          const SizedBox(height: AppSize.s8),

                          // Subtitle
                          Text(
                            l10n.login_subtitle,
                            textAlign: TextAlign.center,
                            style: AppTextStyles.greyMedium14.copyWith(height: 1.43),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSize.s32),

                      // Input Section
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Phone Field Group
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '${l10n.phone} ',
                                      style: AppTextStyles.medium14.copyWith(color: AppColors.neutral700),
                                    ),
                                    const TextSpan(
                                      text: '*',
                                      style: TextStyle(color: AppColors.error),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(height: AppSize.s8),
                              CustomTextField(
                                controller: _phoneController,
                                hintText: l10n.type_phone,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  fillColor: AppColors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(AppRadius.r12),
                                    borderSide: const BorderSide(color: AppColors.neutral100),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(AppRadius.r12),
                                    borderSide: const BorderSide(color: AppColors.primary),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: AppSize.s16),

                          // Verification Method Group
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: l10n.verify_via,
                                      style: AppTextStyles.medium13.copyWith(color: AppColors.black),
                                    ),
                                    const TextSpan(
                                      text: '*',
                                      style: TextStyle(color: AppColors.red),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(height: AppSize.s8),
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomSelectionCard(
                                      title: l10n.sms,
                                      isSelected: _verificationMethod == 'sms',
                                      onTap: () => setState(() => _verificationMethod = 'sms'),
                                      trailing: const Icon(Icons.message_outlined,
                                          color: AppColors.neutral400, size: AppSize.s20),
                                    ),
                                  ),
                                  const SizedBox(width: AppSize.s8),
                                  Expanded(
                                    child: CustomSelectionCard(
                                      title: l10n.whatsapp,
                                      isSelected: _verificationMethod == 'whatsapp',
                                      onTap: () => setState(() => _verificationMethod = 'whatsapp'),
                                      trailing: const Icon(Icons.chat_bubble_outline,
                                          color: AppColors.primary, size: AppSize.s20),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSize.s32),

                      // Login Button
                      CustomButton(
                        text: l10n.login,
                        isLoading: state is AuthLoading,
                        onPressed: () {
                          if (_phoneController.text.isNotEmpty) {
                            context.read<AuthBloc>().add(
                                  LoginRequested(_phoneController.text),
                                );
                          }
                        },
                      ),
                      const SizedBox(height: AppSize.s24),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/navigation/app_router.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_values.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../l10n/app_localizations.dart';
import '../bloc/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.login)),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message), backgroundColor: AppColors.red),
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
          return Padding(
            padding: const EdgeInsets.all(AppPadding.p24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FlutterLogo(size: AppSize.s60 + AppSize.s20),
                const SizedBox(height: AppSize.s48),
                CustomTextField(
                  controller: _phoneController,
                  label: l10n.phone,
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: AppSize.s24),
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
              ],
            ),
          );
        },
      ),
    );
  }
}

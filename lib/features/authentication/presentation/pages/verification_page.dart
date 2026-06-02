import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/navigation/app_router.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/theme/app_values.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../l10n/app_localizations.dart';
import '../bloc/auth_bloc.dart';

class VerificationPage extends StatefulWidget {
  final String phone;

  const VerificationPage({super.key, required this.phone});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final List<TextEditingController> _controllers =
      List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
  
  Timer? _timer;
  int _start = 67; // 01:07 as per Figma

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  String get _timerText {
    int minutes = _start ~/ 60;
    int seconds = _start % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  String get _otpCode => _controllers.map((c) => c.text).join();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: AppColors.white,
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message), backgroundColor: AppColors.red),
            );
          } else if (state is AuthAuthenticated) {
            context.go(AppRouter.main);
          }
        },
        builder: (context, state) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: AppSize.s20),
                  
                  // Header
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      GestureDetector(
                        onTap: () => context.pop(),
                        child: Container(
                          width: AppSize.s32,
                          height: AppSize.s32,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(AppRadius.r8),
                            border: Border.all(color: AppColors.neutral50),
                          ),
                          child: SvgPicture.asset(
                            AppAssets.icArrowBackAr,
                            width: AppSize.s16,
                            height: AppSize.s16,
                          ),
                        ),
                      ),
                      const SizedBox(width: AppSize.s12),
                      Text(
                        l10n.verification_code,
                        style: AppTextStyles.bold16.copyWith(color: AppColors.neutral800),
                      ),
                    ],
                  ),
                  
                  const SizedBox(height: AppSize.s40),
                  
                  Expanded(
                    child: Column(
                      children: [
                        // Subtitle
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: l10n.enter_verification_code,
                                style: AppTextStyles.medium14.copyWith(color: AppColors.neutral500),
                              ),
                              const TextSpan(text: '\n'),
                              TextSpan(
                                text: widget.phone,
                                style: AppTextStyles.bold20.copyWith(color: AppColors.neutral700, height: 2.0),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        
                        const SizedBox(height: AppSize.s32),
                        
                        // OTP Input Fields
                        Directionality(
                          textDirection: TextDirection.ltr,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(4, (index) {
                              return Container(
                                width: AppSize.s56,
                                height: AppSize.s56,
                                margin: const EdgeInsets.symmetric(horizontal: AppSize.s8),
                                decoration: BoxDecoration(
                                  color: _controllers[index].text.isNotEmpty 
                                      ? AppColors.primary50 
                                      : AppColors.white,
                                  borderRadius: BorderRadius.circular(AppRadius.r12),
                                  border: Border.all(
                                    color: _controllers[index].text.isNotEmpty 
                                        ? AppColors.primary 
                                        : AppColors.neutral50,
                                    width: _controllers[index].text.isNotEmpty ? 1.0 : 0.93,
                                  ),
                                ),
                                child: KeyboardListener(
                                  focusNode: FocusNode(), // Wrap listener in its own node to avoid conflicts
                                  onKeyEvent: (event) {
                                    if (event is KeyDownEvent &&
                                        event.logicalKey == LogicalKeyboardKey.backspace &&
                                        _controllers[index].text.isEmpty &&
                                        index > 0) {
                                      _focusNodes[index - 1].requestFocus();
                                    }
                                  },
                                  child: TextField(
                                    controller: _controllers[index],
                                    focusNode: _focusNodes[index],
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    maxLength: 1,
                                    autofocus: index == 0,
                                    style: AppTextStyles.bold24.copyWith(
                                      color: AppColors.primary,
                                    ),
                                    decoration: const InputDecoration(
                                      counterText: '',
                                      border: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      fillColor: Colors.transparent,
                                    ),
                                    onChanged: (value) {
                                      if (value.isNotEmpty) {
                                        if (index < 3) {
                                          _focusNodes[index + 1].requestFocus();
                                        } else {
                                          _focusNodes[index].unfocus();
                                        }
                                      }
                                      setState(() {});
                                    },
                                  ),
                                ),
                              );
                            }),
                          ),
                        ),
                        
                        const SizedBox(height: AppSize.s32),
                        
                        // Timer
                        Column(
                          children: [
                            Text(
                              l10n.code_expires_in,
                              style: AppTextStyles.medium14.copyWith(color: AppColors.neutral400),
                            ),
                            const SizedBox(height: AppSize.s8),
                            Container(
                              padding: const EdgeInsets.all(AppPadding.p8),
                              decoration: BoxDecoration(
                                color: AppColors.neutral25,
                                borderRadius: BorderRadius.circular(AppRadius.r8),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    _timerText,
                                    style: AppTextStyles.bold14.copyWith(color: AppColors.neutral700),
                                  ),
                                  const SizedBox(width: AppSize.s4),
                                  const Icon(Icons.timer_outlined, size: AppSize.s16, color: AppColors.neutral700),
                                ],
                              ),
                            ),
                          ],
                        ),
                        
                        const Spacer(),
                        
                        // Send Button
                        CustomButton(
                          text: l10n.send,
                          isLoading: state is AuthLoading,
                          onPressed: () {
                            if (_otpCode.length == 4) {
                              context.read<AuthBloc>().add(
                                    OtpVerified(widget.phone, _otpCode),
                                  );
                            }
                          },
                        ),
                        const SizedBox(height: AppSize.s40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

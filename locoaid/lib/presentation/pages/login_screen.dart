import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:locoaid/presentation/widgets/custom_text_widgets.dart';
import 'package:locoaid/presentation/widgets/custom_normal_widgets.dart';
import '../../../core/theme/app_theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  final _loginFormKey = GlobalKey<FormState>();
  final _userPhoneNumberController = TextEditingController();
  final _otpController = TextEditingController();
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() => _opacity = 1.0);
    });
  }

  @override
  void dispose() {
    _userPhoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.secondaryColor,
      body: Form(
        key: _loginFormKey,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 600),

              opacity: _opacity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customSvgWidget(
                    filePath: 'assets/icons/lock.svg',
                    height: 70,
                    width: 70,
                  ),
                  const SizedBox(height: 10),
                  customNormalTextWidget(
                    text: "Welcome Back",
                    isBold: false,
                    fontSize: 22,
                  ),
                  const SizedBox(height: 32),

                  Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(10),
                    shadowColor: AppTheme.primaryColor.withOpacity(0.8),
                    child: TextFormField(
                      controller: _userPhoneNumberController,
                      decoration: InputDecoration(
                        labelText: 'PhoneNumber',
                        labelStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(
                          Icons.lock_outline_rounded,
                          color: AppTheme.primaryColor,
                          size: 25,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {});
                          },
                          icon: customSvgWidget(
                            filePath: 'assets/icons/otp.svg',
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter your Phone number';
                        }
                        final phone = int.tryParse(value.trim());
                        if (phone == null) {
                          return 'Numbers are required';
                        }
                        if (value.length != 10) {
                          return 'Enter a valid Phone Number';
                        }
                        return null;
                      },
                    ),
                  ),

                  const SizedBox(height: 10),
                  customTextField(
                    fieldController: _otpController,
                    labelTextUsed: "Enter OTP",
                    iconUsed: Icons.password,
                    iconUsedColor: AppTheme.primaryColor,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your OTP';
                      }
                      final phone = int.tryParse(value.trim());
                      if (phone == null) {
                        return 'Numbers are required';
                      }
                      if (value.length != 4) {
                        return 'Enter a valid OTP';
                      }
                      return null;
                    },
                  ), // phone number field

                  const SizedBox(height: 10),
                  // login Button
                  ElevatedButton(
                    onPressed: () {
                      if (_loginFormKey.currentState!.validate()) {
                        context.go('/homescreen');
                        // All good! ✅
                      } else {
                        // Show errors 🚫
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryColor,
                      elevation: 5,
                      shadowColor: Colors.black26,
                      minimumSize: const Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(color: AppTheme.secondaryColor),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppTheme.textColorLight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

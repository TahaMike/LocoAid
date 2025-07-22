   import 'package:flutter/material.dart';
import 'package:locoaid/core/theme/app_theme.dart';
import 'package:locoaid/presentation/widgets/custom_widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _userNameController = TextEditingController();
  // final _userAgeController = TextEditingController();
  // final _userGenderController = TextEditingController();
  // final _userPhoneNumberController = TextEditingController();

  

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
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.secondaryColor,
      body: Center(
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 600),
          opacity: _opacity,
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.lock, size: 60, color: AppTheme.primaryColor),
                const SizedBox(height: 16),
                customNormalTextWidget(text: "Feeling Sick?! Connect n Forget", isBold: false, fontSize: 20),
                const SizedBox(height: 32),

                customTextField(fieldController: _userNameController, labelTextUsed: "Full Name", iconUsed: Icons.person, iconUsedColor: Colors.black, ),
                
                const SizedBox(height: 8),
                customTextField(fieldController: _emailController, labelTextUsed: "Email", iconUsed: Icons.email, iconUsedColor: Colors.black, ),
                
                const SizedBox(height: 8),
                customTextField(fieldController: _passwordController, isPassword: true, labelTextUsed: "Password", iconUsed: Icons.lock, iconUsedColor: Colors.black, iconSize: 25),
                
                const SizedBox(height: 14),

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppTheme.primaryColor,
                    elevation: 5,
                    shadowColor: Colors.black26,
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text("SignUp", style: TextStyle(fontSize: 16, color: AppTheme.textColorLight)),
                ),

                // const SizedBox(height: 5),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    // elevation: WidgetStateProperty.all(5),
                    // shadowColor: WidgetStateProperty.all(Colors.black26),
                  ),
                  child: customNormalTextWidget(text: "Already have an account?", isBold: false),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
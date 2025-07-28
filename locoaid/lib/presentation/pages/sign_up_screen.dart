import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:locoaid/core/theme/app_theme.dart';
import 'package:locoaid/presentation/widgets/custom_widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isPassword = true;
  String? _selectedGender;

  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _userNameController = TextEditingController();
  final _userAgeController = TextEditingController();
  final _userPhoneNumberController = TextEditingController();

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
    _userAgeController.dispose();
    _userNameController.dispose();
    _userPhoneNumberController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.secondaryColor,
      body: Form(
        key: _formKey,
        child: Center(
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 600),
            opacity: _opacity,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customSvgWidget(
                    filePath: 'assets/icons/lock.svg',
                    height: 70,
                    width: 70,
                  ),
                  const SizedBox(height: 16),
                  customNormalTextWidget(
                    text: "Feeling Sick?! Connect n Forget",
                    isBold: false,
                    fontSize: 22,
                  ),
                  const SizedBox(height: 32),

                  customTextField(
                    fieldController: _userNameController,
                    labelTextUsed: "Full Name",
                    iconUsed: Icons.person,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),

                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 1,
                        child: customTextField(
                          fieldController: _userAgeController,
                          labelTextUsed: "Age",
                          iconUsed: Icons.person_3_outlined,
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'Please enter your age';
                            }
                            final age = int.tryParse(value.trim());
                            if (age == null) {
                              return 'Age must be a number';
                            }
                            if (age <= 0 || age > 120) {
                              return 'Enter a valid age between 1 and 120';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(width: 5),
                      Flexible(
                        flex: 2,
                        child: Material(
                          elevation: 3,
                          borderRadius: BorderRadius.circular(10),
                          shadowColor: AppTheme.primaryColor.withOpacity(0.8),
                          child: DropdownButtonFormField<String>(
                            value: _selectedGender,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            elevation: 4,

                            decoration: InputDecoration(
                              labelText: 'Gender',
                              prefixIcon: (_selectedGender == 'Male')
                                  ? Icon(
                                      Icons.male,
                                      color: AppTheme.primaryColor,
                                    )
                                  : (_selectedGender == 'Female')
                                  ? Icon(
                                      Icons.female,
                                      color: AppTheme.primaryColor,
                                    )
                                  : Icon(
                                      Icons.transgender,
                                      color: AppTheme.primaryColor,
                                    ), // optional
                              iconColor: AppTheme.primaryColor,
                            ),
                            items: ['Male', 'Female', 'Other']
                                .map(
                                  (gender) => DropdownMenuItem(
                                    value: gender,
                                    child: customNormalTextWidget(
                                      text: gender,
                                      isBold: false,
                                      fontSize: 16,
                                    ),
                                  ),
                                )
                                .toList(), //map
                            onChanged: (value) {
                              setState(() {
                                _selectedGender = value;
                              });
                            },
                            validator: (value) =>
                                value == null ? 'Please select a gender' : null,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),
                  customTextField(
                    fieldController: _userPhoneNumberController,
                    labelTextUsed: "Phone Number",
                    iconUsed: Icons.phone,
                    iconUsedColor: AppTheme.primaryColor,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter your Mobile Number';
                      }
                      final phone = int.tryParse(value.trim());
                      if (phone == null) {
                        return 'A Mobile number is required';
                      }
                      if (phone <= 1000000000 || phone > 9999999999) {
                        return 'Enter a valid mobile number';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),

                  Material(
                    elevation: 3,
                    borderRadius: BorderRadius.circular(10),
                    shadowColor: AppTheme.primaryColor.withOpacity(0.8),
                    child: TextFormField(
                      controller: _passwordController,
                      obscureText: isPassword,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(color: Colors.black),
                        prefixIcon: Icon(
                          Icons.lock_outline_rounded,
                          color: AppTheme.primaryColor,
                          size: 25,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isPassword = !isPassword;
                            });
                          },
                          icon: isPassword
                              ? customSvgWidget(
                                  filePath: 'assets/icons/eye_closed.svg',
                                )
                              : customSvgWidget(
                                  filePath: 'assets/icons/eye_open.svg',
                                ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Password is required';
                        }
                        if (value.length < 8) {
                          return 'Password must be at least 8 characters';
                        }
                        return null; // ✅ Very important
                      },
                    ),
                  ),
                  const SizedBox(height: 14),

                  // signUp Button
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
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
                      "SignUp",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppTheme.textColorLight,
                      ),
                    ),
                  ),

                  // const SizedBox(height: 5),
                  TextButton(
                    onPressed: () {},
                    child: customNormalTextWidget(
                      text: "Already have an account?",
                      isBold: false,
                      fontSize: 16,
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

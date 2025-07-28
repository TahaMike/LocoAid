import 'package:flutter/material.dart';
import 'package:locoaid/core/theme/app_theme.dart';

// Normal Text Widget
Widget customNormalTextWidget({
  required String text,
  required bool isBold,
  double? fontSize,
  Color? textColor,
}) => Text(
  text,
  style: TextStyle(
    color: textColor ?? Colors.black,
    fontSize: fontSize ?? 14,
    fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
  ),
);

Widget customTextField({
  required TextEditingController fieldController,
  required String labelTextUsed,
  required IconData iconUsed,
  FormFieldValidator? validator,
  double? iconSize,
  Color? textColor,
  Color? iconUsedColor,
  bool? isPassword,
}) => Material(
  elevation: 3,
  borderRadius: BorderRadius.circular(10),
  shadowColor: AppTheme.primaryColor.withOpacity(0.8),
  child: TextFormField(
    controller: fieldController,
    obscureText: isPassword ?? false,
    decoration: InputDecoration(
      labelText: labelTextUsed,
      labelStyle: TextStyle(color: textColor ?? Colors.black),
      prefixIcon: Icon(
        iconUsed,
        size: iconSize,
        color: iconUsedColor ?? AppTheme.primaryColor,
      ),
    ),
    validator: validator,
  ),
);

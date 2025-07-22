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
// Normal Text Field
Widget customTextField({
  required TextEditingController fieldController,
  required String labelTextUsed,
  required IconData iconUsed,
  required Color iconUsedColor,
  bool? isPassword,
  double? iconSize,
}) => TextField(
  controller: fieldController,
  obscureText: isPassword?? false,
  decoration: InputDecoration(
    labelText: labelTextUsed,
    prefixIcon: Icon(iconUsed, size: iconSize, color: iconUsedColor,),
  ),
);




// Normal Icon Used Widget
Widget customNormalIconWidget({required IconData iconUsed, double? size}) =>
    Icon(iconUsed, size: size, color: AppTheme.iconColor);




// Normal Buttons Widgets
Widget custonButton({
  required String buttonName,

}) => ElevatedButton(
  onPressed: () {},
  style: ButtonStyle(
    backgroundColor: WidgetStateProperty.all(AppTheme.secondaryColor),
  ),
  child: Text(''),

);
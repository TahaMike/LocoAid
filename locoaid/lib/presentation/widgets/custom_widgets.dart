import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  FormFieldValidator<String>? validator,
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

// Normal Icon Used Widget
Widget customNormalIconWidget({
  required IconData iconUsed,
  Color? iconUsedColor,
  double? size,
}) => Icon(iconUsed, size: size, color: iconUsedColor ?? AppTheme.primaryColor);

// custom Elevated Button Widget
Widget customButton({
  required String buttonName,
  required VoidCallback onPressed,
  Color? buttonColor,
}) => ElevatedButton(
  onPressed: () {},
  style: ButtonStyle(
    backgroundColor: WidgetStateProperty.all(
      buttonColor ?? AppTheme.secondaryColor,
    ),
  ),
  child: Text(buttonName, style: TextStyle()),
);

// custom SVG file Widget with different size
Widget customSvgWidget({
  required String filePath,
  double? height,
  double? width,
  Color? svgColorUsed,
}) => SvgPicture.asset(
  filePath,
  color: svgColorUsed ?? AppTheme.primaryColor,
  // colorBlendMode: BlendMode.dstATop,
  package: 'shared',
  height: height ?? 25,
  width: width ?? 25,
);

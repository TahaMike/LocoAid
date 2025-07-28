// Normal Text Field
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:locoaid/core/theme/app_theme.dart';

// Normal Icon Used Widget
Widget customNormalIconWidget({
  required IconData iconUsed,
  Color? iconUsedColor,
  double? size,
}) => Icon(iconUsed, size: size, color: iconUsedColor ?? AppTheme.primaryColor);

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

// with extra iconbutton
Widget customTextFieldWithIconWidget({
  required TextEditingController fieldController,
  required String labelTextUsed,
  required IconData iconUsed,
  required IconData secondIconUsed,
  FormFieldValidator? validator,
  VoidCallbackAction? action,
  ValueChanged? hover,
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
      labelText: 'Password',
      labelStyle: TextStyle(color: Colors.black),
      prefixIcon: Icon(
        Icons.lock_outline_rounded,
        color: AppTheme.primaryColor,
        size: 25,
      ),
      suffixIcon: IconButton(
        onPressed: () {
          action;
        },
        icon: Icon(secondIconUsed),
        onHover: hover,
      ),
    ),
    validator: validator,
  ),
);

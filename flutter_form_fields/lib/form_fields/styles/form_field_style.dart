import 'package:flutter/material.dart';

class FormFieldStyle {
  final Color borderColor;
  final Color focusedBorderColor;
  final Color errorBorderColor;
  final Color fillColor;
  final double borderRadius;
  final TextStyle labelStyle;
  final TextStyle textStyle;
  final EdgeInsets padding;
  final IconData? suffixIcon;
  final Color iconColor;

  const FormFieldStyle({
    this.borderColor = Colors.grey,
    this.focusedBorderColor = Colors.blue,
    this.errorBorderColor = Colors.red,
    this.fillColor = Colors.transparent,
    this.borderRadius = 8,
    this.labelStyle = const TextStyle(fontSize: 14),
    this.textStyle = const TextStyle(fontSize: 14),
    this.padding = const EdgeInsets.all(12),
    this.suffixIcon,
    this.iconColor = Colors.grey,
  });

  InputDecoration decoration(String label) {
    return InputDecoration(
      labelText: label,
      labelStyle: labelStyle,
      filled: true,
      fillColor: fillColor,
      contentPadding: padding,
      border: _border(borderColor),
      enabledBorder: _border(borderColor),
      focusedBorder: _border(focusedBorderColor),
      errorBorder: _border(errorBorderColor),
      focusedErrorBorder: _border(errorBorderColor),
      suffixIcon:
      suffixIcon != null ? Icon(suffixIcon, color: iconColor) : null,
    );
  }

  OutlineInputBorder _border(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: BorderSide(color: color),
    );
  }
}

import 'package:flutter/material.dart';
import '../styles/form_field_style.dart';

class AppTextFormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final FormFieldStyle style;

  const AppTextFormField({
    super.key,
    required this.label,
    required this.controller,
    required this.style,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      style: style.textStyle,
      decoration: style.decoration(label),
    );
  }
}

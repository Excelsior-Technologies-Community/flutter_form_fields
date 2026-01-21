import 'package:flutter/material.dart';
import '../styles/form_field_style.dart';

class AppDateFormField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final FormFieldStyle style;

  const AppDateFormField({
    super.key,
    required this.label,
    required this.controller,
    required this.style,
  });

  Future<void> _pickDate(BuildContext context) async {
    final date = await showDatePicker(
      context: context,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      initialDate: DateTime.now(),
    );

    if (date != null) {
      controller.text = date.toString().split(' ').first;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: true,
      onTap: () => _pickDate(context),
      decoration: style.decoration(label),
    );
  }
}

import 'package:flutter/material.dart';

class AppCheckboxFormField extends FormField<bool> {
  AppCheckboxFormField({
    super.key,
    required String label,
    required bool initialValue,
    required ValueChanged<bool?> onChanged,
    FormFieldValidator<bool>? validator,
    Color activeColor = Colors.blue,
    TextStyle? textStyle,
  }) : super(
    initialValue: initialValue,
    validator: validator,
    builder: (state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CheckboxListTile(
            value: state.value,
            title: Text(label, style: textStyle),
            activeColor: activeColor,
            onChanged: (value) {
              state.didChange(value);
              onChanged(value);
            },
          ),
          if (state.hasError)
            Text(
              state.errorText!,
              style: const TextStyle(color: Colors.red),
            ),
        ],
      );
    },
  );
}

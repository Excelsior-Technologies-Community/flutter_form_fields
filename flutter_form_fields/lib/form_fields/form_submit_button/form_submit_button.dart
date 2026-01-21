import 'package:flutter/material.dart';

class FormSubmitButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;
  final double radius;

  const FormSubmitButton({
    super.key,
    required this.onPressed,
    this.color = Colors.blue,
    this.radius = 8,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
      onPressed: onPressed,
      child: const Text('Submit'),
    );
  }
}

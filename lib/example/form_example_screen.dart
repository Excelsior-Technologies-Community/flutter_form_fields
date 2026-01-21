import 'package:flutter/material.dart';
import 'package:flutter_form_fields/form_fields/form_submit_button/form_submit_button.dart';
import 'package:flutter_form_fields/form_fields/styles/form_field_style.dart';
import '../form_fields/fields/text_form_field.dart';
import '../form_fields/fields/dropdown_form_field.dart';
import '../form_fields/fields/date_form_field.dart';
import '../form_fields/fields/checkbox_form_field.dart';
import '../form_fields/validators/form_validators.dart';

class FormExampleScreen extends StatefulWidget {
  const FormExampleScreen({super.key});

  @override
  State<FormExampleScreen> createState() => _FormExampleScreenState();
}

class _FormExampleScreenState extends State<FormExampleScreen> {
  final formStyle = FormFieldStyle(
    borderColor: Colors.grey,
    focusedBorderColor: Colors.deepPurple,
    fillColor: Colors.deepPurple.shade50,
    borderRadius: 12,
    iconColor: Colors.deepPurple,
  );

  final _formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final dateController = TextEditingController();
  String? gender;
  bool acceptTerms = false;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      debugPrint('Name: ${nameController.text}');
      debugPrint('Gender: $gender');
      debugPrint('Date: ${dateController.text}');
      debugPrint('Accepted Terms: $acceptTerms');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Form Fields')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              AppTextFormField(
                style: FormFieldStyle(
                ),
                label: 'Name',
                controller: nameController,
                validator: FormValidators.required,
              ),
              const SizedBox(height: 12),

              AppDropdownFormField<String>(
                style: formStyle,
                label: 'Gender',
                value: gender,
                items: const [
                  DropdownMenuItem(value: 'Male', child: Text('Male')),
                  DropdownMenuItem(value: 'Female', child: Text('Female')),
                ],
                onChanged: (value) => setState(() => gender = value),
                validator: (value) =>
                value == null ? 'Please select gender' : null,
              ),
              const SizedBox(height: 12),

              AppDateFormField(
                style: formStyle,
                label: 'Date of Birth',
                controller: dateController,
              ),
              const SizedBox(height: 12),

              AppCheckboxFormField(
                label: 'Accept Terms & Conditions',
                initialValue: acceptTerms,
                validator: FormValidators.mustBeTrue,
                onChanged: (value) => acceptTerms = value ?? false,
              ),

              const SizedBox(height: 20),
              FormSubmitButton(onPressed: _submitForm,),
            ],
          ),
        ),
      ),
    );
  }
}

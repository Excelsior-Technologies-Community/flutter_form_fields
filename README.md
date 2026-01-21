# Flutter Form Fields

A powerful, customizable Flutter form fields library with built-in validation, styling, and reusable components.  
Designed to be **developer-friendly**, **UI-flexible**, and **production-ready** 🚀

---

## ✨ Features

✅ Text Field  
✅ Dropdown Field  
✅ Date Picker Field  
✅ Checkbox Field  
✅ Form Validation Rules  
✅ Form Submit Button  
✅ Centralized Styling System  
✅ Fully Customizable UI  
✅ Library-ready Architecture  
✅ Pub.dev compatible  

---

## 📸 Preview
![forms](https://github.com/user-attachments/assets/2ebf9301-0e6b-4a4b-b4e6-b14d56308bb0)


---

## 📦 Installation

### Add this to your `pubspec.yaml`:
```dart
dependencies:
  flutter_form_fields:
    path: '.../flutter_form_fields/flutter_form_fields'
```

### From GitHub
```yaml
dependencies:
  flutter_form_fields:
    git:
      url: https://github.com/your-username/flutter_form_fields.git
```

---

## 🚀 Quick Usage
```dart
import 'package:flutter_form_fields/flutter_form_fields.dart';
```

---

## 🎨 Create Global Style
```dart
final formStyle = FormFieldStyle(
  borderColor: Colors.grey,
  focusedBorderColor: Colors.deepPurple,
  errorBorderColor: Colors.red,
  fillColor: Colors.deepPurple.shade50,
  borderRadius: 12,
  labelStyle: TextStyle(fontSize: 14, color: Colors.black),
  textStyle: TextStyle(fontSize: 14),
  suffixIcon: Icons.edit,
  iconColor: Colors.deepPurple,
);
```
---

## 🧩 Text Field Example
```dart
AppTextFormField(
  label: 'Name',
  controller: nameController,
  style: formStyle,
  validator: FormValidators.required,
),
```

---

## 🧩 Dropdown Example
```dart
AppDropdownFormField<String>(
  label: 'Gender',
  value: gender,
  items: const [
    DropdownMenuItem(value: 'Male', child: Text('Male')),
    DropdownMenuItem(value: 'Female', child: Text('Female')),
  ],
  onChanged: (val) => setState(() => gender = val),
  style: formStyle,
),
```

---

## 🧩 Date Picker Example
```dart
AppDateFormField(
  label: 'Date of Birth',
  controller: dateController,
  style: formStyle,
),
```

---

## 🧩 Checkbox Example
```dart
AppCheckboxFormField(
  label: 'Accept Terms',
  initialValue: false,
  onChanged: (val) => accepted = val ?? false,
  validator: FormValidators.mustBeTrue,
  activeColor: Colors.deepPurple,
),
```

---

## 🧩 Submit Button Example
```dart
FormSubmitButton(
  onPressed: _submitForm,
  color: Colors.deepPurple,
  radius: 12,
  child: Text('Register'),
),
```

---

## 🧪 Validation Rules
```dart
FormValidators.required(value);
FormValidators.mustBeTrue(value);
```

---

## 📁 Project Structure
```text
lib/
├── flutter_form_fields.dart
└── src/
    ├── fields/
    ├── styles/
    ├── validators/
    └── buttons/
```

---

## 📄 License
```text
Copyright (c) 2026 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED **"AS IS"**, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```


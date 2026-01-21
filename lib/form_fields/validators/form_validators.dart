class FormValidators {
  static String? required(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }
    return null;
  }

  static String? mustBeTrue(bool? value) {
    if (value != true) {
      return 'You must accept this';
    }
    return null;
  }
}

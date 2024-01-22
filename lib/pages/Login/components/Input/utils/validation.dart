String? validator(String? value) {
  if (value == null || value.isEmpty) {
    return 'Do not forget to fill me out ';
  } else {
    return null;
  }
}

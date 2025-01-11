import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final String? labelText;
  final IconData icon;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextInputAction textInputAction;
  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final String? Function(String?)? validator;

  const AppTextField({
    super.key,
    required this.hintText,
    this.labelText,
    required this.icon,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.textInputAction = TextInputAction.done,
    this.onChanged,
    this.onSubmitted,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      textInputAction: textInputAction,
      onChanged: onChanged,
      onFieldSubmitted: onSubmitted,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        suffixIcon: Icon(icon),
      ),
    );
  }
}

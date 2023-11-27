import 'package:flutter/material.dart';

class CustomTextField2 extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final String labelText;
  final String hintText;
  final IconData? iconData;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;

  const CustomTextField2(
      {Key? key,
      required this.controller,
      this.obscureText = false,
      required this.labelText,
      required this.hintText,
      this.iconData,
      this.validator,
      this.textInputType,
      this.textInputAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        icon: Icon(iconData),
      ),
      validator: validator,
      keyboardType: textInputType,
      textInputAction: textInputAction,
    );
  }
}

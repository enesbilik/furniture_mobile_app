import 'package:flutter/material.dart';

class CustomAddressField extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final int? minLines;
  final int? maxLines;
  final int? maxLength;

  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;

  const CustomAddressField(
      {Key? key,
      required this.labelText,
      this.hintText,
      this.textInputType,
      this.textInputAction,
      this.controller,
      this.minLines,
      this.maxLines,
      this.maxLength})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: minLines,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.8),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        labelText: labelText,
        hintText: hintText,
      ),
    );
  }
}

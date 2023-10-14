import 'package:flutter/material.dart';
import '../../constants/borders.dart';
import '../../constants/paddings.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final Widget? icon;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final bool autofocus;

  const CustomTextField({
    Key? key,
    this.hintText = '',
    this.keyboardType = TextInputType.text,
    this.icon,
    this.controller,
    this.onChanged,
    this.autofocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 1,
      borderRadius: AppBorder().brA10,
      child: ClipRRect(
        borderRadius: AppBorder().brA10,
        child: TextField(
          autofocus: autofocus,
          onChanged: onChanged,
          controller: controller,
          keyboardType: keyboardType,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 4) + AppPadding().pA15,
              child: icon,
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 18,
            ),
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xff919191),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

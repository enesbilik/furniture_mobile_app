import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/constants/paddings.dart';
import 'package:furniture_mobile_app/validation/validation_mixin.dart';
import 'package:furniture_mobile_app/widgets/custom_button.dart';
import 'package:furniture_mobile_app/widgets/custom_text_field2.dart';

class ChangePasswordView extends ConsumerStatefulWidget {
  const ChangePasswordView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ChangePasswordViewState();
}

class _ChangePasswordViewState extends ConsumerState<ChangePasswordView>
    with CustomValidation {
  final _oldPasswordController = TextEditingController();

  final _passwordController = TextEditingController();

  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Şifremi Değiştir",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: AppPadding().pA15,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              CustomTextField2(
                controller: _oldPasswordController,
                obscureText: true,
                labelText: 'Old Password',
                hintText: '******',
                iconData: Icons.lock,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 10),
              CustomTextField2(
                controller: _passwordController,
                obscureText: true,
                labelText: 'Password',
                hintText: '******',
                iconData: Icons.lock,
                validator: validatePassword,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 10),
              CustomTextField2(
                controller: _confirmPasswordController,
                obscureText: true,
                labelText: 'Confirm Password',
                hintText: '******',
                iconData: Icons.lock,
                validator: (confirmValue) => validateConfirmPassword(
                    confirmValue, _passwordController.text),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: CustomButton(
                  text: "Değiştir",
                  onPressed: () {
                    _handleClickSubmit(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleClickSubmit(BuildContext context) {
    if (_formKey.currentState!.validate()) {}
  }
}

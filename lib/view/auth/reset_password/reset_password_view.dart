import 'package:flutter/material.dart';
import 'package:furniture_mobile_app/validation/validation_mixin.dart';
import 'package:furniture_mobile_app/widgets/bold_title.dart';
import 'package:furniture_mobile_app/widgets/custom_button.dart';
import 'package:furniture_mobile_app/widgets/custom_dialog.dart';
import 'package:furniture_mobile_app/widgets/custom_text_field2.dart';
import 'package:furniture_mobile_app/widgets/top_image.dart';

class ResetPasswordView extends StatelessWidget with CustomValidation {
  ResetPasswordView({Key? key}) : super(key: key);

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const TopLottie(
                    lottiePath: "assets/lotties/reset_password_lottie.json"),
                const SizedBox(height: 10),
                const BoldTitle(text: "Şifremi Yenile"),
                const SizedBox(height: 10),
                CustomTextField2(
                  controller: _passwordController,
                  obscureText: true,
                  labelText: 'Yeni Şifre',
                  hintText: '******',
                  iconData: Icons.lock,
                  validator: validatePassword,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 10),
                CustomTextField2(
                  controller: _confirmPasswordController,
                  obscureText: true,
                  labelText: 'Yeni Şifre Tekrar',
                  hintText: '******',
                  iconData: Icons.lock,
                  validator: (confirmValue) => validateConfirmPassword(
                      confirmValue, _passwordController.text),
                ),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                      text: "Onayla", onPressed: () => _handleSubmit(context)),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleSubmit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _showSuccessPopup(context);
    }
  }

  void _showSuccessPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const CustomDialog(text: "Changed Successfully");
      },
    );
  }
}

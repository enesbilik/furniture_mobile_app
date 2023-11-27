import 'package:flutter/material.dart';
import 'package:furniture_mobile_app/validation/validation_mixin.dart';
import 'package:furniture_mobile_app/view/auth/reset_password/reset_password_view.dart';
import 'package:furniture_mobile_app/widgets/bold_title.dart';
import 'package:furniture_mobile_app/widgets/custom_button.dart';
import 'package:furniture_mobile_app/widgets/custom_text_field2.dart';
import 'package:furniture_mobile_app/widgets/top_image.dart';

class ForgotPasswordView extends StatelessWidget with CustomValidation {
  ForgotPasswordView({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
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
                    lottiePath: "assets/lotties/forgot_password_lottie.json"),
                const SizedBox(height: 10),
                const BoldTitle(text: "Şifremi Unuttum"),
                const SizedBox(height: 10),
                Text(
                  "Merak etme! Lütfen hesabınızla ilişkili e-posta adresini giriniz.",
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                const SizedBox(height: 10),
                CustomTextField2(
                  controller: _emailController,
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  iconData: Icons.email,
                  validator: validateEmail,
                  textInputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 30),
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
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => ResetPasswordView()));
    }
  }
}

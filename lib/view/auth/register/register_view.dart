import 'package:flutter/material.dart';
import 'package:furniture_mobile_app/validation/validation_mixin.dart';
import 'package:furniture_mobile_app/widgets/bold_title.dart';
import 'package:furniture_mobile_app/widgets/custom_button.dart';
import 'package:furniture_mobile_app/widgets/custom_dialog.dart';
import 'package:furniture_mobile_app/widgets/custom_text_field2.dart';
import 'package:furniture_mobile_app/widgets/top_image.dart';

class RegisterView extends StatelessWidget with CustomValidation {
  RegisterView({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
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
                    lottiePath: "assets/lotties/sign_up_lottie.json"),
                const SizedBox(height: 10),
                const BoldTitle(text: "Kayıt ol"),
                const SizedBox(height: 10),
                CustomTextField2(
                  controller: _emailController,
                  labelText: 'Email',
                  hintText: 'example@gmail.com',
                  iconData: Icons.email,
                  validator: validateEmail,
                  textInputType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 10),
                CustomTextField2(
                  controller: _fullNameController,
                  labelText: 'Full Name',
                  hintText: 'John Papa',
                  iconData: Icons.person,
                  validator: validateFullName,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 10),
                CustomTextField2(
                  controller: _phoneNumberController,
                  labelText: 'Phone',
                  hintText: '5xxxxxxxxx',
                  iconData: Icons.phone,
                  validator: validatePhoneNumber,
                  textInputType: TextInputType.phone,
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
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                      text: "Kayıt Ol",
                      onPressed: () => _handleSignUp(context)),
                ),
                const SizedBox(height: 10),
                _buildLoginButton(context),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _buildLoginButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Zaten hesabınız var mı?",
          style: TextStyle(color: Colors.grey.shade600),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Giriş Yap"),
        ),
      ],
    );
  }

  void _handleSignUp(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _showSuccessPopup(context);
    }
  }

  void _showSuccessPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const CustomDialog(text: "Registration Successful");
      },
    );
  }
}

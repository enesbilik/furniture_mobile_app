import 'package:flutter/material.dart';
import 'package:furniture_mobile_app/cache/cache_manager.dart';
import 'package:furniture_mobile_app/validation/validation_mixin.dart';
import 'package:furniture_mobile_app/view/auth/forgot_password/forgot_password_view.dart';
import 'package:furniture_mobile_app/view/auth/register/register_view.dart';
import 'package:furniture_mobile_app/view/skeleton/skeleton_view.dart';
import 'package:furniture_mobile_app/widgets/bold_title.dart';
import 'package:furniture_mobile_app/widgets/custom_button.dart';
import 'package:furniture_mobile_app/widgets/custom_text_field2.dart';
import 'package:furniture_mobile_app/widgets/top_image.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginView extends ConsumerWidget with CustomValidation {
  LoginView({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
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
                const TopLottie(lottiePath: "assets/lotties/login_lottie.json"),
                const SizedBox(height: 10),
                const BoldTitle(text: "Giriş Yap"),
                const SizedBox(height: 10),
                CustomTextField2(
                  controller: _emailController,
                  labelText: 'Email',
                  hintText: 'ornek@hotmail.com',
                  iconData: Icons.email,
                  validator: validateEmail,
                  textInputType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
                const SizedBox(height: 10),
                CustomTextField2(
                  controller: _passwordController,
                  obscureText: true,
                  labelText: 'Şifre',
                  hintText: '******',
                  iconData: Icons.lock,
                  validator: validatePassword,
                ),
                const SizedBox(height: 10),
                _buildForgotButton(context),
                const SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: CustomButton(
                    text: "Giriş Yap",
                    onPressed: () => _handleLogin(context),
                  ),
                ),
                const SizedBox(height: 10),
                _buildRegisterButton(context),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _buildRegisterButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Hesabın yok mu?",
          style: TextStyle(color: Colors.grey.shade600),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegisterView()));
          },
          child: const Text("Kayıt ol!"),
        ),
      ],
    );
  }

  Align _buildForgotButton(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: TextButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ForgotPasswordView()));
        },
        child: const Text(
          "Şifremi unuttum?",
        ),
      ),
    );
  }

  void _handleLogin(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _loginsucceeded(context);
    }
  }

  void _loginsucceeded(BuildContext context) {
    CacheManager().writeStringValue(CacheKeys.token, "token");
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const SkeletonView()),
        (route) => false);
  }
}

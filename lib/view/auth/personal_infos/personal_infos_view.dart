import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/constants/paddings.dart';
import 'package:furniture_mobile_app/validation/validation_mixin.dart';
import 'package:furniture_mobile_app/widgets/custom_button.dart';
import 'package:furniture_mobile_app/widgets/custom_text_field2.dart';

class PersonalInfosView extends ConsumerStatefulWidget {
  const PersonalInfosView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PersonalInfosViewState();
}

class _PersonalInfosViewState extends ConsumerState<PersonalInfosView>
    with CustomValidation {
  final _fullNameController = TextEditingController(text: "Enes Bilik");
  final _phoneNumberController = TextEditingController(text: "5442563413");
  final _emailController = TextEditingController(text: "enesbilik8@gmail.com");
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Kullanıcı Bilgilerim",
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
                labelText: 'Full Name',
                hintText: 'John Papa',
                iconData: Icons.person,
                validator: validateFullName,
                textInputAction: TextInputAction.next,
                controller: _fullNameController,
              ),
              const SizedBox(height: 10),
              CustomTextField2(
                labelText: 'Phone',
                hintText: '5xxxxxxxxx',
                iconData: Icons.phone,
                validator: validatePhoneNumber,
                textInputType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                controller: _phoneNumberController,
              ),
              const SizedBox(height: 10),
              CustomTextField2(
                enabled: false,
                labelText: 'Email',
                hintText: 'example@gmail.com',
                iconData: Icons.email,
                textInputType: TextInputType.emailAddress,
                controller: _emailController,
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: CustomButton(
                  text: "Onayla",
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

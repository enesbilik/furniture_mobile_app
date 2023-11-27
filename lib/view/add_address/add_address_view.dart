import 'package:flutter/material.dart';
import 'package:furniture_mobile_app/widgets/custom_address_field.dart';
import 'package:furniture_mobile_app/widgets/custom_button.dart';

class AddAddressView extends StatelessWidget {
  const AddAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adres Ekleme'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: CustomAddressField(
                    labelText: "Ad",
                    hintText: "Enes",
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: CustomAddressField(
                    labelText: "Soyad",
                    hintText: "Bilik",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const CustomAddressField(
              labelText: 'Telefon',
              hintText: "+90 5xxxxxxxxxx",
            ),
            const SizedBox(height: 20),
            // Şehir ve ilçe alanları
            const CustomAddressField(
              labelText: 'İl',
            ),
            const SizedBox(height: 10),
            const CustomAddressField(
              labelText: 'İlçe',
            ),
            const SizedBox(height: 10),

            const CustomAddressField(
              labelText: 'Adres',
              minLines: 1,
              maxLines: 2,
              maxLength: 128,
            ),
            const SizedBox(height: 10),

            const CustomAddressField(
              labelText: 'Adres ismi',
              hintText: "Evim, İş yerim vb.",
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: CustomButton(
                text: 'Kaydet',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

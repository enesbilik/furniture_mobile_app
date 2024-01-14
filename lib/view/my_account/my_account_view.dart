import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/cache/cache_manager.dart';
import 'package:furniture_mobile_app/view/address_infos/address_infos_view.dart';
import 'package:furniture_mobile_app/view/auth/login/login_view.dart';
import 'package:furniture_mobile_app/view/auth/personal_infos/personal_infos_view.dart';
import 'package:furniture_mobile_app/view/change_password/change_password_view.dart';
import 'package:furniture_mobile_app/view/orders/orders_view.dart';

class MyAccountView extends ConsumerWidget {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hesabım",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Kullanıcı Bilgilerim"),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PersonalInfosView()),
                  );
                },
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.location_on),
                title: const Text("Adreslerim"),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddressInfosView()));
                },
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.shopping_basket),
                title: const Text("Siparişlerim"),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OrdersView()),
                  );
                },
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.lock),
                title: const Text("Şifre Değişikliği"),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChangePasswordView()),
                  );
                },
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
              ),
            ),
            Card(
              child: ListTile(
                leading: const Icon(Icons.exit_to_app),
                title: const Text("Çıkış Yap"),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  CacheManager().writeStringValue(CacheKeys.token, null);
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginView()),
                      (route) => false);
                },
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

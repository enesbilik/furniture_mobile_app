import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/view/auth/login/login_view.dart';

class MyAccountView extends ConsumerWidget {
  const MyAccountView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Account",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Kullanıcı Bilgilerim"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {},
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text("Adres Bilgilerim"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {},
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket),
              title: Text("Siparişlerim"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {},
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text("Şifre Değişikliği"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {},
              contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Çıkış Yap"),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginView()),
                    (route) => false);
              },
              contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            ),
          ],
        ),
      ),
    );
  }
}

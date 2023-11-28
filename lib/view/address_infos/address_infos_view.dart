import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/constants/paddings.dart';
import 'package:furniture_mobile_app/view/add_address/add_address_view.dart';

class AddressInfosView extends ConsumerStatefulWidget {
  const AddressInfosView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AddressInfosViewState();
}

class _AddressInfosViewState extends ConsumerState<AddressInfosView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AddAddressView()));
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text(
          "Adreslerim",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: AppPadding().pA15,
        child: Column(
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.info_outline_rounded),
                SizedBox(width: 10),
                Flexible(
                  child: Text(
                      "Bu sayfada yapacağınız adres değişiklikleri, daha önce vermiş olduğunuz siparişleri etkilemez."),
                ),
                SizedBox(width: 2),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    padding: AppPadding().pA15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.home_outlined,
                                  color: Colors.grey.shade700,
                                ),
                                const SizedBox(width: 4),
                                const Text(
                                  "Enes Ev",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Kazım karabekir mah. no:16",
                              style: TextStyle(
                                color: Colors.grey.shade800,
                              ),
                            )
                          ],
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit_note_outlined,
                            color: Colors.deepPurple,
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

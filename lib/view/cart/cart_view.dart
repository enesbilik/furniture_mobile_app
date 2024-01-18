import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/constants/paddings.dart';
import 'package:furniture_mobile_app/view/cart/cart_riverpod.dart';
import 'package:furniture_mobile_app/widgets/cart_product_card.dart';
import 'package:furniture_mobile_app/widgets/custom_popup.dart';

class CartView extends ConsumerStatefulWidget {
  const CartView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CartViewState();
}

class _CartViewState extends ConsumerState<CartView> {
  @override
  Widget build(BuildContext context) {
    var watch = ref.watch(cartRiverpod);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Sepetim",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: watch.cartProducts.isEmpty
            ? const Center(
                child: Text("Sepetinizde ürün bulunmuyor"),
              )
            : Padding(
                padding: AppPadding().pH15,
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: watch.cartProducts.length,
                        itemBuilder: (BuildContext context, int index) {
                          var product = watch.cartProducts[index];
                          return CartProductCard(product, index);
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Toplam:",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "${watch.totalPrice.toStringAsFixed(2)} TL",
                          style: const TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 56,
                      width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepPurple),
                        onPressed: () {
                          watch.clearCart();
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return const CustomPopup(
                                  text: "Siparişiniz oluşturuldu");
                            },
                          );
                        },
                        child: const Text(
                          "Onayla",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}

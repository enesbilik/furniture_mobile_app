import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/constants/paddings.dart';
import 'package:furniture_mobile_app/view/cart/cart_riverpod.dart';
import 'package:furniture_mobile_app/widgets/cart_product_card.dart';

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
        title: Text(
          "My Cart",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: AppPadding().pH15,
          child: Column(
            children: [
              // Text(
              //   "My Cart",
              //   style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
              // ),
              // SizedBox(
              //   height: 15,
              // ),
              Expanded(
                // height: MediaQuery.sizeOf(context).height * 0.5,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: watch.cartProducts.length,
                  itemBuilder: (BuildContext context, int index) {
                    var product = watch.cartProducts[index];
                    return CartProductCard(product, index);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total:",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "\$320.00",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 56,
                width: 200,
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {},
                  child: Text(
                    "Buy now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

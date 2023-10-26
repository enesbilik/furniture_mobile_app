import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_mobile_app/view/cart/cart_riverpod.dart';

class CartProductCard extends ConsumerWidget {
  final CartProductModel cartProductModel;
  final int index;
  const CartProductCard(this.cartProductModel, this.index, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(cartRiverpod);
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.grey.shade100, borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              "https://static.vecteezy.com/system/resources/previews/011/794/199/non_2x/fabric-armchair-soft-cushion-with-metal-leg-3d-rendering-modern-interior-design-for-living-room-free-png.png",
              width: 100,
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                cartProductModel.title,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                cartProductModel.price,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
            ],
          ),
          Spacer(),
          Container(
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      watch.decrementProductAmount(index);
                    },
                    icon: Icon(
                      Icons.remove,
                      color: Colors.white,
                    )),
                Text(
                  cartProductModel.amount.toString(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                IconButton(
                    onPressed: () {
                      watch.incrementProductAmount(index);
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    )),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(30)),
          )
        ],
      ),
    );
  }
}
